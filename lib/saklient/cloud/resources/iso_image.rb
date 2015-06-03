# -*- encoding: UTF-8 -*-

# This code is automatically transpiled by Saklient Translator

require_relative '../client'
require_relative 'resource'
require_relative 'icon'
require_relative 'ftp_info'
require_relative '../enums/escope'
require_relative '../../errors/saklient_exception'

module Saklient
  module Cloud
    module Resources

      # ISOイメージの実体1つに対応し, 属性の取得や操作を行うためのクラス.
      class IsoImage < Saklient::Cloud::Resources::Resource

        protected

        # ID
        #
        # @return [String]
        attr_accessor :m_id

        # スコープ {Saklient::Cloud::Enums::EScope}
        #
        # @return [String]
        attr_accessor :m_scope

        # 名前
        #
        # @return [String]
        attr_accessor :m_name

        # 説明
        #
        # @return [String]
        attr_accessor :m_description

        # タグ文字列の配列
        #
        # @return [Array<String>]
        attr_accessor :m_tags

        # アイコン
        #
        # @return [Icon]
        attr_accessor :m_icon

        # 表示順序
        #
        # @return [Fixnum]
        attr_accessor :m_display_order

        # サイズ[MiB]
        #
        # @return [Fixnum]
        attr_accessor :m_size_mib

        # サービスクラス
        #
        # @return [String]
        attr_accessor :m_service_class

        # @private
        # @return [String]
        def _api_path
          return '/cdrom'
        end

        # @private
        # @return [String]
        def _root_key
          return 'CDROM'
        end

        # @private
        # @return [String]
        def _root_key_m
          return 'CDROMs'
        end

        public

        # @private
        # @return [String]
        def _class_name
          return 'IsoImage'
        end

        # @private
        # @return [String]
        def _id
          return get_id
        end

        # このローカルオブジェクトに現在設定されているリソース情報をAPIに送信し, 新規作成または上書き保存します.
        #
        # @return [IsoImage] this
        def save
          return _save
        end

        # 最新のリソース情報を再取得します.
        #
        # @return [IsoImage] this
        def reload
          return _reload
        end

        # @private
        # @param [Saklient::Cloud::Client] client
        # @param [any] obj
        # @param [bool] wrapped
        def initialize(client, obj, wrapped = false)
          super(client)
          Saklient::Util::validate_type(client, 'Saklient::Cloud::Client')
          Saklient::Util::validate_type(wrapped, 'bool')
          api_deserialize(obj, wrapped)
        end

        protected

        # @private
        # @param [any] r
        # @param [any] root
        # @return [void]
        def _on_after_api_deserialize(r, root)
          return nil if (root).nil?
          if !root.nil? && root.key?(:FTPServer)
            ftp = root[:FTPServer]
            @_ftp_info = Saklient::Cloud::Resources::FtpInfo.new(ftp) if !(ftp).nil?
          end
        end

        # @private
        # @return [Fixnum]
        def get_size_gib
          sizeMib = get_size_mib
          return (sizeMib).nil? ? nil : sizeMib >> 10
        end

        # @private
        # @param [Fixnum] sizeGib
        # @return [Fixnum]
        def set_size_gib(sizeGib)
          Saklient::Util::validate_type(sizeGib, 'Fixnum')
          set_size_mib((sizeGib).nil? ? nil : sizeGib * 1024)
          return sizeGib
        end

        public

        # サイズ[GiB]
        #
        # @return [Fixnum]
        attr_accessor :size_gib

        def size_gib
          get_size_gib
        end

        def size_gib=(v)
          set_size_gib(v)
        end

        protected

        # @private
        # @return [FtpInfo]
        attr_accessor :_ftp_info

        public

        # @private
        # @return [FtpInfo]
        def get_ftp_info
          return @_ftp_info
        end

        # FTP情報
        #
        # @return [FtpInfo]
        attr_reader :ftp_info

        def ftp_info
          get_ftp_info
        end

        # FTPSを開始し, イメージファイルをアップロード・ダウンロードできる状態にします.
        #
        # アカウント情報は, ftpInfo プロパティから取得することができます.
        #
        # @param [bool] reset 既にFTPSが開始されているとき, trueを指定してこのメソッドを呼ぶことでパスワードを再設定します.
        # @return [IsoImage] this
        def open_ftp(reset = false)
          Saklient::Util::validate_type(reset, 'bool')
          path = _api_path + '/' + Saklient::Util::url_encode(_id) + '/ftp'
          q = {}
          Saklient::Util::set_by_path(q, 'ChangePassword', reset)
          result = @_client.request('PUT', path, q)
          _on_after_api_deserialize(nil, result)
          return self
        end

        # FTPSを終了し, ISOイメージを利用可能な状態にします.
        #
        # @return [IsoImage] this
        def close_ftp
          path = _api_path + '/' + Saklient::Util::url_encode(_id) + '/ftp'
          @_client.request('DELETE', path)
          @_ftp_info = nil
          return self
        end

        protected

        # @return [bool]
        attr_accessor :n_id

        # (This method is generated in Translator_default#buildImpl)
        #
        # @private
        # @return [String]
        def get_id
          return @m_id
        end

        public

        # ID
        #
        # @return [String]
        attr_reader :id

        def id
          get_id
        end

        protected

        # @return [bool]
        attr_accessor :n_scope

        # (This method is generated in Translator_default#buildImpl)
        #
        # @private
        # @return [String]
        def get_scope
          return @m_scope
        end

        # (This method is generated in Translator_default#buildImpl)
        #
        # @private
        # @param [String] v
        # @return [String]
        def set_scope(v)
          Saklient::Util::validate_type(v, 'String')
          @m_scope = v
          @n_scope = true
          return @m_scope
        end

        public

        # スコープ {Saklient::Cloud::Enums::EScope}
        #
        # @return [String]
        attr_accessor :scope

        def scope
          get_scope
        end

        def scope=(v)
          set_scope(v)
        end

        protected

        # @return [bool]
        attr_accessor :n_name

        # (This method is generated in Translator_default#buildImpl)
        #
        # @private
        # @return [String]
        def get_name
          return @m_name
        end

        # (This method is generated in Translator_default#buildImpl)
        #
        # @private
        # @param [String] v
        # @return [String]
        def set_name(v)
          Saklient::Util::validate_type(v, 'String')
          @m_name = v
          @n_name = true
          return @m_name
        end

        public

        # 名前
        #
        # @return [String]
        attr_accessor :name

        def name
          get_name
        end

        def name=(v)
          set_name(v)
        end

        protected

        # @return [bool]
        attr_accessor :n_description

        # (This method is generated in Translator_default#buildImpl)
        #
        # @private
        # @return [String]
        def get_description
          return @m_description
        end

        # (This method is generated in Translator_default#buildImpl)
        #
        # @private
        # @param [String] v
        # @return [String]
        def set_description(v)
          Saklient::Util::validate_type(v, 'String')
          @m_description = v
          @n_description = true
          return @m_description
        end

        public

        # 説明
        #
        # @return [String]
        attr_accessor :description

        def description
          get_description
        end

        def description=(v)
          set_description(v)
        end

        protected

        # @return [bool]
        attr_accessor :n_tags

        # (This method is generated in Translator_default#buildImpl)
        #
        # @private
        # @return [Array<String>]
        def get_tags
          @n_tags = true
          return @m_tags
        end

        # (This method is generated in Translator_default#buildImpl)
        #
        # @private
        # @param [Array<String>] v
        # @return [Array<String>]
        def set_tags(v)
          Saklient::Util::validate_type(v, 'Array')
          @m_tags = v
          @n_tags = true
          return @m_tags
        end

        public

        # タグ文字列の配列
        #
        # @return [Array<String>]
        attr_accessor :tags

        def tags
          get_tags
        end

        def tags=(v)
          set_tags(v)
        end

        protected

        # @return [bool]
        attr_accessor :n_icon

        # (This method is generated in Translator_default#buildImpl)
        #
        # @private
        # @return [Icon]
        def get_icon
          return @m_icon
        end

        # (This method is generated in Translator_default#buildImpl)
        #
        # @private
        # @param [Icon] v
        # @return [Icon]
        def set_icon(v)
          Saklient::Util::validate_type(v, 'Saklient::Cloud::Resources::Icon')
          @m_icon = v
          @n_icon = true
          return @m_icon
        end

        public

        # アイコン
        #
        # @return [Icon]
        attr_accessor :icon

        def icon
          get_icon
        end

        def icon=(v)
          set_icon(v)
        end

        protected

        # @return [bool]
        attr_accessor :n_display_order

        # (This method is generated in Translator_default#buildImpl)
        #
        # @private
        # @return [Fixnum]
        def get_display_order
          return @m_display_order
        end

        # (This method is generated in Translator_default#buildImpl)
        #
        # @private
        # @param [Fixnum] v
        # @return [Fixnum]
        def set_display_order(v)
          Saklient::Util::validate_type(v, 'Fixnum')
          @m_display_order = v
          @n_display_order = true
          return @m_display_order
        end

        public

        # 表示順序
        #
        # @return [Fixnum]
        attr_accessor :display_order

        def display_order
          get_display_order
        end

        def display_order=(v)
          set_display_order(v)
        end

        protected

        # @return [bool]
        attr_accessor :n_size_mib

        # (This method is generated in Translator_default#buildImpl)
        #
        # @private
        # @return [Fixnum]
        def get_size_mib
          return @m_size_mib
        end

        # (This method is generated in Translator_default#buildImpl)
        #
        # @private
        # @param [Fixnum] v
        # @return [Fixnum]
        def set_size_mib(v)
          Saklient::Util::validate_type(v, 'Fixnum')
          raise Saklient::Errors::SaklientException.new('immutable_field', 'Immutable fields cannot be modified after the resource creation: ' + 'Saklient::Cloud::Resources::IsoImage#size_mib') if !@is_new
          @m_size_mib = v
          @n_size_mib = true
          return @m_size_mib
        end

        public

        # サイズ[MiB]
        #
        # @return [Fixnum]
        attr_accessor :size_mib

        def size_mib
          get_size_mib
        end

        def size_mib=(v)
          set_size_mib(v)
        end

        protected

        # @return [bool]
        attr_accessor :n_service_class

        # (This method is generated in Translator_default#buildImpl)
        #
        # @private
        # @return [String]
        def get_service_class
          return @m_service_class
        end

        public

        # サービスクラス
        #
        # @return [String]
        attr_reader :service_class

        def service_class
          get_service_class
        end

        protected

        # (This method is generated in Translator_default#buildImpl)
        #
        # @param [any] r
        def api_deserialize_impl(r)
          @is_new = (r).nil?
          r = {} if @is_new
          @is_incomplete = false
          if Saklient::Util::exists_path(r, 'ID')
            @m_id = (Saklient::Util::get_by_path(r, 'ID')).nil? ? nil : Saklient::Util::get_by_path(r, 'ID').to_s
          else
            @m_id = nil
            @is_incomplete = true
          end
          @n_id = false
          if Saklient::Util::exists_path(r, 'Scope')
            @m_scope = (Saklient::Util::get_by_path(r, 'Scope')).nil? ? nil : Saklient::Util::get_by_path(r, 'Scope').to_s
          else
            @m_scope = nil
            @is_incomplete = true
          end
          @n_scope = false
          if Saklient::Util::exists_path(r, 'Name')
            @m_name = (Saklient::Util::get_by_path(r, 'Name')).nil? ? nil : Saklient::Util::get_by_path(r, 'Name').to_s
          else
            @m_name = nil
            @is_incomplete = true
          end
          @n_name = false
          if Saklient::Util::exists_path(r, 'Description')
            @m_description = (Saklient::Util::get_by_path(r, 'Description')).nil? ? nil : Saklient::Util::get_by_path(r, 'Description').to_s
          else
            @m_description = nil
            @is_incomplete = true
          end
          @n_description = false
          if Saklient::Util::exists_path(r, 'Tags')
            if (Saklient::Util::get_by_path(r, 'Tags')).nil?
              @m_tags = []
            else
              @m_tags = []
              for t in Saklient::Util::get_by_path(r, 'Tags')
                v1 = nil
                v1 = (t).nil? ? nil : t.to_s
                @m_tags << v1
              end
            end
          else
            @m_tags = nil
            @is_incomplete = true
          end
          @n_tags = false
          if Saklient::Util::exists_path(r, 'Icon')
            @m_icon = (Saklient::Util::get_by_path(r, 'Icon')).nil? ? nil : Saklient::Cloud::Resources::Icon.new(@_client, Saklient::Util::get_by_path(r, 'Icon'))
          else
            @m_icon = nil
            @is_incomplete = true
          end
          @n_icon = false
          if Saklient::Util::exists_path(r, 'DisplayOrder')
            @m_display_order = (Saklient::Util::get_by_path(r, 'DisplayOrder')).nil? ? nil : (Saklient::Util::get_by_path(r, 'DisplayOrder').to_s).to_s().to_i(10)
          else
            @m_display_order = nil
            @is_incomplete = true
          end
          @n_display_order = false
          if Saklient::Util::exists_path(r, 'SizeMB')
            @m_size_mib = (Saklient::Util::get_by_path(r, 'SizeMB')).nil? ? nil : (Saklient::Util::get_by_path(r, 'SizeMB').to_s).to_s().to_i(10)
          else
            @m_size_mib = nil
            @is_incomplete = true
          end
          @n_size_mib = false
          if Saklient::Util::exists_path(r, 'ServiceClass')
            @m_service_class = (Saklient::Util::get_by_path(r, 'ServiceClass')).nil? ? nil : Saklient::Util::get_by_path(r, 'ServiceClass').to_s
          else
            @m_service_class = nil
            @is_incomplete = true
          end
          @n_service_class = false
        end

        # @private
        # @param [bool] withClean
        # @return [any]
        def api_serialize_impl(withClean = false)
          Saklient::Util::validate_type(withClean, 'bool')
          missing = []
          ret = {}
          Saklient::Util::set_by_path(ret, 'ID', @m_id) if withClean || @n_id
          Saklient::Util::set_by_path(ret, 'Scope', @m_scope) if withClean || @n_scope
          if withClean || @n_name
            Saklient::Util::set_by_path(ret, 'Name', @m_name)
          else
            missing << 'name' if @is_new
          end
          Saklient::Util::set_by_path(ret, 'Description', @m_description) if withClean || @n_description
          if withClean || @n_tags
            Saklient::Util::set_by_path(ret, 'Tags', [])
            for r1 in @m_tags
              v = nil
              v = r1
              ret[:Tags] << v
            end
          end
          Saklient::Util::set_by_path(ret, 'Icon', withClean ? ((@m_icon).nil? ? nil : @m_icon.api_serialize(withClean)) : ((@m_icon).nil? ? { ID: '0' } : @m_icon.api_serialize_id)) if withClean || @n_icon
          Saklient::Util::set_by_path(ret, 'DisplayOrder', @m_display_order) if withClean || @n_display_order
          if withClean || @n_size_mib
            Saklient::Util::set_by_path(ret, 'SizeMB', @m_size_mib)
          else
            missing << 'size_mib' if @is_new
          end
          Saklient::Util::set_by_path(ret, 'ServiceClass', @m_service_class) if withClean || @n_service_class
          raise Saklient::Errors::SaklientException.new('required_field', 'Required fields must be set before the IsoImage creation: ' + missing.join(', ')) if missing.length > 0
          return ret
        end

      end

    end
  end
end
