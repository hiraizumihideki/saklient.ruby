# -*- encoding: UTF-8 -*-

require_relative '../../errors/http_bad_request_exception'

module Saklient
  module Cloud
    module Errors

      # 不適切な要求です. リクエストパラメータに指定されたゾーンをパスに含むURLへアクセスしてください.
      class AmbiguousZoneException < Saklient::Errors::HttpBadRequestException

        # (static var) @@default_message = '不適切な要求です。リクエストパラメータに指定されたゾーンをパスに含むURLへアクセスしてください。'

      end

    end
  end
end