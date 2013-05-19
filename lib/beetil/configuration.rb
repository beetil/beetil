module Beetil
  module Configuration
    VALID_OPTION_KEYS = [
      :base_url,
      :api_token
    ].freeze

    # @private
    attr_accessor *VALID_OPTION_KEYS

    # Convenience method to allow configuration options to be set in a block
    def configure
      yield self
      self.base_url ||= default_base_url
    end

    # Create a hash of options and their values
    def options
      options = {}
      VALID_OPTIONS_KEYS.each{|k| options[k] = send(k)}
      options
    end

    def default_base_url
      'https://deskapi.gotoassist.com/v1'
    end
  end
end
