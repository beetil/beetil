require 'hashie'
require 'httparty'
require 'active_support'

require File.expand_path('../beetil/configuration', __FILE__)
require File.expand_path('../beetil/base', __FILE__)
require File.expand_path('../beetil/error', __FILE__)
Dir[File.expand_path('../beetil/client/*.rb', __FILE__)].each{|f| require f}

require 'beetil/beetil'
