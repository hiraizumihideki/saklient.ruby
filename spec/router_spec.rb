$: << File.dirname(__dir__) + '/lib'
require 'saklient/cloud/api'
require 'date'
require 'SecureRandom'
require 'ipaddr'

describe 'Router' do
  
  
  
  before do
    
    # load config file
    root = File.dirname(__dir__)
    test_ok_file = root + '/testok'
    expect(File).to exist(test_ok_file)
    config_file = root + '/config.sh'
    expect(File).to exist(config_file)
    @config = {}
    fh = open(config_file)
    fh.each {|line|
      if /^\s*export\s+(\w+)\s*=\s*(.+?)\s*$/.match(line) then
        key = $1
        value = $2
        @config[key.to_sym] = value.gsub(/'([^']*)'|"([^"]*)"|\\(.)|(.)/) {|m|
          $1 || $2 || $3 || $4
        }
      end
    }
    fh.close
    expect(@config[:SACLOUD_TOKEN]).not_to be_empty #'SACLOUD_TOKEN must be defined in config.sh'
    expect(@config[:SACLOUD_SECRET]).not_to be_empty #'SACLOUD_SECRET must be defined in config.sh'
    #expect(@config[:SACLOUD_ZONE]).not_to be_empty #'SACLOUD_ZONE must be defined in config.sh'
    
    # authorize
    @api = Saklient::Cloud::API::authorize(@config[:SACLOUD_TOKEN], @config[:SACLOUD_SECRET])
    @api = @api.in_zone(@config[:SACLOUD_ZONE]) if @config[:SACLOUD_ZONE]
    expect(@api).to be_an_instance_of Saklient::Cloud::API
    
  end
  
  
  
  it 'should be CRUDed' do
    name = '!ruby_rspec-' + DateTime.now.strftime('%Y%m%d_%H%M%S') + '-' + SecureRandom.uuid[0, 8]
    description = 'This instance was created by saklient.ruby rspec'
    mask_len = 28
    mask_len_cnt = 1<<32-mask_len
    sroute_mask_len = 28
    sroute_mask_len_cnt = 1<<32-sroute_mask_len
  
    #
    swytch = nil
    if true then
      puts 'ルータ＋スイッチの帯域プランを検索しています...'
      plans = @api.product.router.find
      min_mbps = 0x7FFFFFFF
      for plan in plans do
        expect(plan).to be_an_instance_of Saklient::Cloud::Resources::RouterPlan
        expect(plan.band_width_mbps).to be > 0
        min_mbps = [plan.band_width_mbps, min_mbps].min
      end
      
      puts 'ルータ＋スイッチを作成しています...'
      router = @api.router.create
      router.name = name
      router.description = description
      router.band_width_mbps = min_mbps
      router.network_mask_len = mask_len
      router.save
      
      puts 'ルータ＋スイッチの作成完了を待機しています...'
      fail 'ルータが正常に作成されません' unless router.sleep_while_creating
      swytch = router.get_swytch
    else
      puts '既存のルータ＋スイッチを取得しています...'
      swytches = @api.swytch.with_name_like('saklient-static-1').limit(1).find
      expect(swytches.length).to eq 1
      swytch = swytches[0]
    end
    
    expect(swytch).to be_an_instance_of Saklient::Cloud::Resources::Swytch
    expect(swytch.ipv4_nets.length).to eq 1
    expect(swytch.ipv4_nets[0]).to be_an_instance_of Saklient::Cloud::Resources::Ipv4Net
    expect(swytch.ipv4_nets[0].range.as_array.length).to eq mask_len_cnt-5
    expect(swytch.collect_used_ipv4_addresses.length).to eq 0
    expect(swytch.collect_unused_ipv4_addresses.length).to eq mask_len_cnt-5
    
    #
    puts 'サーバを作成しています...'
    server = @api.server.create
    expect(server).to be_an_instance_of Saklient::Cloud::Resources::Server
    server.name = name
    server.description = description
    server.plan = @api.product.server.get_by_spec(1, 1)
    server.save
    expect(server.id.to_i).to be > 0
     
    #
    puts 'インタフェースを増設しています...'
    iface = server.add_iface()
    expect(iface).to be_an_instance_of Saklient::Cloud::Resources::Iface
    expect(iface.id.to_i).to be > 0
    
    #
    puts 'インタフェースをルータ＋スイッチに接続しています...'
    iface.connect_to_swytch(swytch)
    
    #
    puts 'インタフェースにIPアドレスを設定しています...'
    iface.user_ip_address = swytch.ipv4_nets[0].range.as_array[1]
    iface.save
    expect(swytch.collect_used_ipv4_addresses.length).to eq 1
    expect(swytch.collect_unused_ipv4_addresses.length).to eq mask_len_cnt-6
    
    #
    puts 'ルータ＋スイッチの帯域プランを変更しています...'
    router_id_before = swytch.router.id
    swytch.change_plan(swytch.router.band_width_mbps==100 ? 500 : 100)
    expect(swytch.router.id).not_to eq router_id_before
    
    #
    puts 'ルータ＋スイッチにIPv6ネットワークを割り当てています...'
    v6net = swytch.add_ipv6_net
    expect(v6net).to be_an_instance_of Saklient::Cloud::Resources::Ipv6Net
    expect(swytch.ipv6_nets.length).to eq 1
    
    #
    puts 'ルータ＋スイッチにスタティックルートを割り当てています...'
    net0 = swytch.ipv4_nets[0]
    next_hop = IPAddr.new(IPAddr.new(net0.address).to_i + 4, Socket::AF_INET).to_s
    sroute = swytch.add_static_route(sroute_mask_len, next_hop)
    expect(sroute).to be_an_instance_of Saklient::Cloud::Resources::Ipv4Net
    expect(swytch.ipv4_nets.length).to eq 2
    expect(swytch.ipv4_nets[1].range.as_array.length).to eq sroute_mask_len_cnt
    
    #
    (swytch.ipv4_nets.length - 1).downto(1) do |i|
      puts 'ルータ＋スイッチからスタティックルートの割当を解除しています...'
      net = swytch.ipv4_nets[i]
      swytch.remove_static_route(net)
    end
    
    #
    if 0 < swytch.ipv6_nets.length then
      puts 'ルータ＋スイッチからIPv6ネットワークの割当を解除しています...'
      swytch.remove_ipv6_net
    end

    #
    puts 'サーバを削除しています...'
    server.destroy
    
    #
    
  end
  
  
  
  after do
    @config = nil
    @api = nil
  end
  
  
  
end
