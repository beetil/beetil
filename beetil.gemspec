spec = Gem::Specification.new do |s|
  s.name = 'beetil'
  s.version = '0.0.2'
  s.summary = "Beetil API Wrapper"
  s.description = %{Beetil API Wrapper}
  s.files = [] + Dir['lib/**/*.rb']
  s.require_path = 'lib'
  s.authors = ["Luke Grimstrup"]
  s.email = ["luke@beetil.com"]

  s.add_dependency 'httparty', '~> 0.7.8'

  s.add_development_dependency 'rspec-rails', '~> 2.6.0'
end