module Beetil
  class Connection
    attr_reader :base_url
    attr_reader :faraday
    attr_reader :token

    def initialize(base_url, token)
      @base_url = base_url
      @token = token
      @faraday = create_faraday_connection(base_url)
      @faraday.basic_auth 'x', token
    end

    def get(*args)
      @faraday.get(*args)
    end

    protected
    def create_faraday_connection(base_url)
      Faraday.new(:url => base_url) do |faraday|
        faraday.use Faraday::Request::JSON          # Beetil accepts json or xml, so request JSON
        faraday.request  :url_encoded               # form-encode POST params, as required by Beetil
        faraday.use FaradayMiddleware::ParseJson
        faraday.adapter  Faraday.default_adapter    # make requests with Net::HTTP
      end
    end
  end
end
