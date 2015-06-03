# -*- encoding: UTF-8 -*-

# This code is automatically transpiled by Saklient Translator

require_relative '../../errors/http_conflict_exception'

module Saklient
  module Cloud
    module Errors

      # 要求された操作を行えません. ライセンスの問題により, 組み合わせて使用できないディスクが接続されています.
      class DiskLicenseMismatchException < Saklient::Errors::HttpConflictException

        # @param [Fixnum] status
        # @param [String] code
        # @param [String] message
        def initialize(status, code = nil, message = '')
          super(status, code, (message).nil? || message == '' ? '要求された操作を行えません。ライセンスの問題により、組み合わせて使用できないディスクが接続されています。' : message)
        end

      end

    end
  end
end
