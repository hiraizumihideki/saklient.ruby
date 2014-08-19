# -*- encoding: UTF-8 -*-

require_relative '../../errors/http_conflict_exception'

module Saklient
  module Cloud
    module Errors

      # 要求された操作を行えません. リソースの作成処理が進行中です. 完了後に再度お試しください.
      class StillCreatingException < Saklient::Errors::HttpConflictException

        # (static var) @@default_message = '要求された操作を行えません。リソースの作成処理が進行中です。完了後に再度お試しください。'

      end

    end
  end
end