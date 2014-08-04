# -*- encoding: UTF-8 -*-

require_relative '../../errors/http_conflict_exception'

module Saclient
  module Cloud
    module Errors

      # 要求された操作を行えません. ISOイメージが見つかりません. イメージを正しくアップロードし, FTP共有を終了した後に再度お試しください.
      class MissingIsoImageException < Saclient::Errors::HttpConflictException

        # (static var) @@default_message = '要求された操作を行えません。ISOイメージが見つかりません。イメージを正しくアップロードし、FTP共有を終了した後に再度お試しください。'

      end

    end
  end
end
