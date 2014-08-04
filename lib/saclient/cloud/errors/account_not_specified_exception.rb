# -*- encoding: UTF-8 -*-

require_relative '../../errors/http_forbidden_exception'

module Saclient
  module Cloud
    module Errors

      # 要求された操作は許可されていません. このAPIはアカウントを特定できる認証方法でアクセスする必要があります.
      class AccountNotSpecifiedException < Saclient::Errors::HttpForbiddenException

        # (static var) @@default_message = '要求された操作は許可されていません。このAPIはアカウントを特定できる認証方法でアクセスする必要があります。'

      end

    end
  end
end
