# -*- encoding: UTF-8 -*-

module Saclient
  module Cloud
    module Errors

      # 要求された操作を行えません. FTP共有は既に終了されています.
      class FtpIsAlreadyCloseException < Saclient::Cloud::Errors::HttpConflictException

        # (static var) @@default_message = '要求された操作を行えません。FTP共有は既に終了されています。'

      end

    end
  end
end