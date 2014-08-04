# -*- encoding: UTF-8 -*-

require_relative '../../errors/http_conflict_exception'

module Saclient
  module Cloud
    module Errors

      # 要求された操作を行えません. ファイルをアップロード後に実行してください.
      class FileNotUploadedException < Saclient::Errors::HttpConflictException

        # (static var) @@default_message = '要求された操作を行えません。ファイルをアップロード後に実行してください。'

      end

    end
  end
end
