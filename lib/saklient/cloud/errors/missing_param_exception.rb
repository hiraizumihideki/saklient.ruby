# -*- encoding: UTF-8 -*-

require_relative '../../errors/http_bad_request_exception'

module Saklient
  module Cloud
    module Errors

      # 不適切な要求です. 必要なパラメータが指定されていません.
      class MissingParamException < Saklient::Errors::HttpBadRequestException

        # (static var) @@default_message = '不適切な要求です。必要なパラメータが指定されていません。'

      end

    end
  end
end