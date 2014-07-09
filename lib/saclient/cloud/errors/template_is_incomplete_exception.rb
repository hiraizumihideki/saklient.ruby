# -*- encoding: UTF-8 -*-

module Saclient
  module Cloud
    module Errors

      # 要求された操作を行えません. このテンプレートは不完全です. 複製処理等の完了後に再度お試しください.
      class TemplateIsIncompleteException < Saclient::Cloud::Errors::HttpConflictException

        # (static var) @@default_message = '要求された操作を行えません。このテンプレートは不完全です。複製処理等の完了後に再度お試しください。'

      end

    end
  end
end