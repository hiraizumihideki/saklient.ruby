# -*- encoding: UTF-8 -*-

require_relative 'http_exception'

module Saclient
  module Errors

    # HTTPエラー. Requested Range Not Satisfiable.
    class HttpRequestedRangeNotSatisfiableException < Saclient::Errors::HttpException

      # (static var) @@default_message = 'HTTPエラー。Requested Range Not Satisfiable.'

    end

  end
end
