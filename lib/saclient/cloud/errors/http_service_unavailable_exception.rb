# -*- encoding: UTF-8 -*-

module Saclient
  module Cloud
    module Errors

      # サービスが利用できません. 対象は利用できない, またはサーバが混雑しています. このエラーが繰り返し発生する場合は, メンテナンス情報, サポートサイトをご確認ください.
      class HttpServiceUnavailableException < Saclient::Cloud::Errors::HttpException

        # (static var) @@default_message = 'サービスが利用できません。対象は利用できない、またはサーバが混雑しています。このエラーが繰り返し発生する場合は、メンテナンス情報、サポートサイトをご確認ください。'

      end

    end
  end
end
