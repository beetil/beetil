spec = Gem::Specification.new do |s|
  s.name = 'beetil'
  s.version = '0.0.2'
  s.summary = "Beetil API Wrapper"
  s.description = %{Beetil API Wrapper}
  s.files = Dir.glob("**/*").reject!{|file| file.include?('pkg')}
  s.require_path = 'lib'
  s.authors = ["Luke Grimstrup"]
  s.email = ["luke@beetil.com"]

  s.add_dependency 'activemodel'
  s.add_dependency 'httparty', '~> 0.8.1'
  s.add_dependency 'hashie',   '~> 1.1.0'

  s.add_development_dependency 'rspec',   '~> 2.8.0'
  s.add_development_dependency "webmock", "~> 1.7"
end
