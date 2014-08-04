# -*- encoding: UTF-8 -*-

require_relative '../../errors/http_conflict_exception'

module Saclient
  module Cloud
    module Errors

      # 要求された操作を行えません. サーバとの接続を切り離した後に実行してください.
      class DisconnectB4DeleteException < Saclient::Errors::HttpConflictException

        # (static var) @@default_message = '要求された操作を行えません。サーバとの接続を切り離した後に実行してください。'

      end

    end
  end
end
