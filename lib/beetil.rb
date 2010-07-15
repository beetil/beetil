require 'rubygems'

gem 'httparty', '~> 0.6.0'
require 'httparty'

gem 'hashie', '~> 0.2.0'
require 'hashie'

module Beetil
  
  class ResponseError < StandardError; end

end

directory = File.expand_path(File.dirname(__FILE__))

require File.join(directory, 'support', 'recursive_struct')

require File.join(directory, 'beetil', 'base')
require File.join(directory, 'beetil', 'customer')
require File.join(directory, 'beetil', 'incident')

puts '*** Activated Beetil Gem ***'