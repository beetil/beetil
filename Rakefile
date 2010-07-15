require 'rubygems'  
require 'rake'  
require 'echoe'  
  
Echoe.new('beetil', '0.0.1') do |p|  
  p.description     = "Beetil API Wrapper"  
  p.url             = "http://www.beetil.com/api"  
  p.author          = "Luke Grimstrup"  
  p.email           = "luke@beetil.com"  
  p.ignore_pattern  = ["tmp/*", "script/*"]  
  p.development_dependencies = []  
  p.runtime_dependencies = ["httparty"]
end  
  
Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }