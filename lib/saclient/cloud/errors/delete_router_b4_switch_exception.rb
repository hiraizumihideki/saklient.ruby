# -*- encoding: UTF-8 -*-

require_relative '../../errors/http_conflict_exception'

module Saclient
  module Cloud
    module Errors

      # 要求された操作を行えません. ルータを削除することでスイッチは同時に削除されます.
      class DeleteRouterB4SwitchException < Saclient::Errors::HttpConflictException

        # (static var) @@default_message = '要求された操作を行えません。ルータを削除することでスイッチは同時に削除されます。'

      end

    end
  end
end
