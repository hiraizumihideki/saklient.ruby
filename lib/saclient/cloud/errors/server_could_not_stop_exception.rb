# -*- encoding: UTF-8 -*-

module Saclient
  module Cloud
    module Errors

      # サービスが利用できません. サーバを停止できません. 再度お試しください.
      class ServerCouldNotStopException < Saclient::Cloud::Errors::HttpServiceUnavailableException

        # (static var) @@default_message = 'サービスが利用できません。サーバを停止できません。再度お試しください。'

      end

    end
  end
end
