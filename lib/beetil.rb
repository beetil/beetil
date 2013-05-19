require 'hashie'
require 'active_support'
require 'faraday'
require 'faraday_middleware'

require 'beetil/configuration'
require 'beetil/connection'
require 'beetil/base'
require 'beetil/error'
Dir[File.expand_path('../beetil/client/*.rb', __FILE__)].each{|f| require f}

require 'beetil/beetil'
