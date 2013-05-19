module Beetil
  class Base < Hashie::Mash
    class << self

      def model_name
        @_model_name ||= ActiveSupport::Inflector.underscore(ActiveSupport::Inflector.demodulize(self))
      end

      def table_name
        @_table_name ||= ActiveSupport::Inflector.pluralize(model_name)
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
        perform_beetil_request(:get, "#{table_name}/#{id}", opts).send(model_name.downcase.to_sym)
      end

      def create(opts = {})
        perform_beetil_request(:post, "#{base_uri}/#{table_name}", model_name.downcase.to_sym => opts)
      end

      def update(id, opts = {})
        perform_beetil_request(:put, "#{base_uri}/#{table_name}/update", :id => id, model_name.downcase.to_sym => opts)
      end

      protected
      def perform_beetil_request(method, url, opts)
        @connection = Connection.new(Beetil.base_url, Beetil.api_token)
        response = @connection.send(method, url, opts)
        mash = Hashie::Mash.new(response.body)
        mash.result
      end
    end

    # Instance Methods

    def new_record?
      self.id.nil?
    end
  end
end
