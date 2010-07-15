module Beetil
  class Incident < Hashie::Mash

    class << self 
      def model_name 
        @_model_name ||= ActiveModel::Name.new(self) 
      end 
    end 
    
    def new_record?
      self.id.nil?
    end

    def self.find(path, opts = {})
      perform_request(:get, "#{@base_uri}/services/#{path}", opts).service
    end
  end
end