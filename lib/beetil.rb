module Beetil
  class ResponseError < StandardError; end
end

directory = File.expand_path(File.dirname(__FILE__))
Dir[directory, '**', "*.rb"].each {|file| require file }

puts '*** Activated Beetil Gem ***'