# -*- encoding: UTF-8 -*-

module Saclient
  module Cloud
    module Errors

      # 要求された操作を行えません. このスナップショット または これより新しいスナップショットから他のリソースへのコピー処理が進行中です. 完了後に再度お試しください.
      class SnapshotInMigrationException < Saclient::Cloud::Errors::HttpConflictException

        # (static var) @@default_message = '要求された操作を行えません。このスナップショット または これより新しいスナップショットから他のリソースへのコピー処理が進行中です。完了後に再度お試しください。'

      end

    end
  end
end