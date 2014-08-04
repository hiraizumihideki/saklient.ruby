# -*- encoding: UTF-8 -*-

require_relative '../../errors/http_conflict_exception'

module Saclient
  module Cloud
    module Errors

      # 要求された操作を行えません. ルータには適用できません.
      class NotForRouterException < Saclient::Errors::HttpConflictException

        # (static var) @@default_message = '要求された操作を行えません。ルータには適用できません。'

      end

    end
  end
end
