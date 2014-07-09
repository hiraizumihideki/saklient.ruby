# -*- encoding: UTF-8 -*-

module Saclient
  module Cloud
    module Errors

      # 要求された操作を行えません. ルータを削除する前に, IPv6ネットワークの割当を解除してください.
      class DeleteIpV6NetsFirstException < Saclient::Cloud::Errors::HttpConflictException

        # (static var) @@default_message = '要求された操作を行えません。ルータを削除する前に、IPv6ネットワークの割当を解除してください。'

      end

    end
  end
end
