module RubyStackoverflow
  class Configuration
    attr_accessor(:client_id, :client_secret, :client_key, :access_token, :api_url,
                  :proxy_addr, :proxy_port, :proxy_user, :proxy_pass)

    def self.api_url
      'https://api.stackexchange.com/2.2/'
    end
  end
end
