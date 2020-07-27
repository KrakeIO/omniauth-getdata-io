require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class GetdataIo < OmniAuth::Strategies::OAuth2

      option :name, 'getdata_io'

      option :client_options, {
        :site => "https://getdata.io",
        :authorize_url => "https://getdata.io/oauth/authorize?response_type=code",
        :token_url => "https://getdata.io/oauth/token?grant_type=authorization_code"
      }

      uid { 
        raw_info["id"] 
      }

      info do
        {
          :email => raw_info["email"],
          :name => raw_info["name"],
          :id => raw_info["id"]
        }
      end

      def client
        ::OAuth2::Client.new(options.client_id, options.client_secret, deep_symbolize(options.client_options))
      end

      def raw_info
        @raw_info ||= access_token.get("/community-profiles/me").parsed
      end

      def callback_url
        full_host + script_name + callback_path
      end
    end
  end
end