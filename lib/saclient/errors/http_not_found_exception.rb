# -*- encoding: UTF-8 -*-

require_relative 'http_exception'

module Saclient
  module Errors

    # 対象が見つかりません. 対象は利用できない状態か, IDまたはパスに誤りがあります.
    class HttpNotFoundException < Saclient::Errors::HttpException

      # (static var) @@default_message = '対象が見つかりません。対象は利用できない状態か、IDまたはパスに誤りがあります。'

    end

  end
end
