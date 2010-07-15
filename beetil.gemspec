# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{beetil}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Luke Grimstrup"]
  s.date = %q{2010-07-12}
  s.description = %q{Beetil API Wrapper}
  s.email = %q{luke@beetil.com}
  s.extra_rdoc_files = ["README.rdoc", "lib/beetil.rb", "lib/beetil/base.rb", "lib/beetil/customer.rb", "lib/beetil/incident.rb", "lib/support/recursive_struct.rb"]
  s.files = ["Manifest", "README.rdoc", "Rakefile", "lib/beetil.rb", "lib/beetil/base.rb", "lib/beetil/customer.rb", "lib/beetil/incident.rb", "lib/support/recursive_struct.rb", "beetil.gemspec"]
  s.homepage = %q{http://www.beetil.com/api}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Beetil", "--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{beetil}
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Beetil API Wrapper}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<httparty>, [">= 0"])
    else
      s.add_dependency(%q<httparty>, [">= 0"])
    end
  else
    s.add_dependency(%q<httparty>, [">= 0"])
  end
end
