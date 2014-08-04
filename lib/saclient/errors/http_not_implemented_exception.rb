# -*- encoding: UTF-8 -*-

require_relative 'http_exception'

module Saclient
  module Errors

    # HTTPエラー. Not Implemented.
    class HttpNotImplementedException < Saclient::Errors::HttpException

      # (static var) @@default_message = 'HTTPエラー。Not Implemented.'

    end

  end
end
