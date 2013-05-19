# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "beetil/version"

spec = Gem::Specification.new do |s|
  s.name = 'beetil'
  s.version = Beetil::VERSION
  s.summary = "Beetil API Wrapper"
  s.description = %{Beetil API Wrapper}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.authors = ["Luke Grimstrup"]
  s.email = ["luke@beetil.com"]

  s.add_dependency 'activesupport'
  s.add_dependency 'hashie',   '~> 1.1.0'
  s.add_dependency 'faraday',  '~> 0.7.6'
  s.add_dependency 'faraday_middleware'

  s.add_development_dependency 'rspec',   '~> 2.8.0'
  s.add_development_dependency "webmock", "~> 1.11"
end
