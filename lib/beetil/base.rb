module Beetil
  class Base < Hashie::Mash
    include HTTParty

    base_uri BEETIL_BASE_URL
    basic_auth 'x', BEETIL_API_TOKEN
  
    class << self

      def model_name
        @_model_name ||= ActiveModel::Name.new(self).human
      end

      def table_name
        @_table_name ||= model_name.pluralize
      end
      
      def all(opts = {})
        perform_beetil_request(:get, "#{base_uri}/#{table_name}", opts).send(model_name.downcase.to_sym)
      end

      #
      # Ideally this will request a new object containing all the valid fields for the object
      #
      # def new(opts = {})
      #   perform_beetil_request(:get, "#{base_uri}/#{table_name}/new", opts).send(model_name.downcase.to_sym)
      # end

      def find(id, opts = {})
        perform_beetil_request(:get, "#{base_uri}/#{table_name}/show", opts.merge(:id => id)).send(model_name.downcase.to_sym)
      end

      def create(opts = {})
        perform_beetil_request(:post, "#{base_uri}/#{table_name}/create", model_name.downcase.to_sym => opts)
      end

      def update(id, opts = {})
        perform_beetil_request(:post, "#{base_uri}/#{table_name}/update", :id => id, model_name.downcase.to_sym => opts)
      end

      protected
      
      def perform_beetil_request(method, url, opts)
        opts = { :query => opts }
        response = send(method, url, opts)

        # Hashie can't parse the errors hash for some reason..
        response['errors'] || Hashie::Mash.new(response['result'])
      end
    end
   
    # Instance Methods
    
    def new_record?
      self.id.nil?
    end
  end
end