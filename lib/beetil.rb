require 'hashie'
require 'httparty'
require 'active_model'

directory = File.expand_path(File.dirname(__FILE__))
Dir.glob("#{directory}/**/*.rb").each do |file| 
  require file
end

module Beetil
  extend Configuration
end
