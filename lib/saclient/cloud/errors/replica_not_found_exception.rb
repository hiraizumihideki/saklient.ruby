# -*- encoding: UTF-8 -*-

module Saclient
  module Cloud
    module Errors

      # 対象が見つかりません. このストレージには指定リソースの複製が存在しません.
      class ReplicaNotFoundException < Saclient::Cloud::Errors::HttpNotFoundException

        # (static var) @@default_message = '対象が見つかりません。このストレージには指定リソースの複製が存在しません。'

      end

    end
  end
end