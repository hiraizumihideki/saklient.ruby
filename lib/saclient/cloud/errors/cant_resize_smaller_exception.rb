# -*- encoding: UTF-8 -*-

module Saclient
  module Cloud
    module Errors

      # 不適切な要求です. 現在の容量よりも小さくリサイズすることはできません.
      class CantResizeSmallerException < Saclient::Cloud::Errors::HttpBadRequestException

        # (static var) @@default_message = '不適切な要求です。現在の容量よりも小さくリサイズすることはできません。'

      end

    end
  end
end
