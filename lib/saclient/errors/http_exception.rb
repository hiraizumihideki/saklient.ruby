# -*- encoding: UTF-8 -*-


module Saclient
  module Errors

    class HttpException < StandardError

      # @return [Integer]
      attr_accessor :status

      # @return [String]
      attr_accessor :code

      # @return [String]
      attr_accessor :message

      # @param [String] message
      # @param [Integer] status
      # @param [String] code
      def initialize(status, code = nil, message = '')
        super(message)
        @status = status
        @code = code
        @message = message
      end

    end

  end
end
