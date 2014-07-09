# -*- encoding: UTF-8 -*-

module Saclient
  module Cloud
    module Errors

      # 不適切な要求です. パラメータで指定されたIPアドレスを含むネットワークが存在しません.
      class ParamIpNotFoundException < Saclient::Cloud::Errors::HttpBadRequestException

        # (static var) @@default_message = '不適切な要求です。パラメータで指定されたIPアドレスを含むネットワークが存在しません。'

      end

    end
  end
end
