module Beetil
  class Base < Hashie::Mash
    include HTTParty
  
    @config = YAML.load(File.read('config/beetil.yml'))
  
    def initialize
      @auth = { :username => 'x', :password => @config['beetil']['token'] }
      @base_uri = "http://#{@config['beetil']['site']}/external_api/v1"
    end
  
    def perform_request(method = :get, url, opts)
      opts = { :query => opts, :basic_auth => @auth }
      response = self.class.send(method, url, opts)
    
      Hashie::Mash.new(response['result'])
    end
  end
end