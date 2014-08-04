# -*- encoding: UTF-8 -*-

require_relative '../../errors/http_payment_required_exception'

module Saclient
  module Cloud
    module Errors

      # 要求を受け付けできません. 電話認証を先に実行してください.
      class PaymentTelCertificationException < Saclient::Errors::HttpPaymentRequiredException

        # (static var) @@default_message = '要求を受け付けできません。電話認証を先に実行してください。'

      end

    end
  end
end
