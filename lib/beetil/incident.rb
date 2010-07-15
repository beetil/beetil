module Beetil
  class Incident < Beetil::Base

    class << self 
      def model_name 
        @_model_name ||= ActiveModel::Name.new(self) 
      end 
    end 
    
    def new_record?
      self.id.nil?
    end

    def self.all(opts = {})
      perform_request(:get, "#{@base_uri}/incidents", opts).incidents
    end
    
    def self.new(opts = {})
      perform_request(:get, "#{@base_uri}/incidents/new", opts).incident
    end
    
    def self.find(id, opts = {})
      Beetil::Incident.new(perform_request(:get, "#{@base_uri}/incidents/#{id}", opts).incident)
    end

    # its implied here that the given opts are those for a new incident
    # allowing you to use @incident = Beetil::Incident.create(params[:incident]) from your controller. OH! MAGIC!
    def self.create(opts = {})
      perform_request(:post, "#{@base_uri}/incidents/create", :incident => opts)
    end
    
    def self.update(id, opts = {})
      perform_request(:post, "#{@base_uri}/incidents/update", :id => id, :incident => opts)
    end
  end
end