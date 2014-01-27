# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'yaga/version'

Gem::Specification.new do |gem|
  gem.name          = "yaga"
  gem.version       = Yaga::VERSION
  gem.authors       = ["Frank C. Eckert"]
  gem.email         = ["frank.eckert@boost-project.com"]
  gem.description   = <<-EOF
    Yaga is yet another Google Analytics integration for your
    rails app. It supports multiple environments, custom variables,
    events and anonymizeIP.
  EOF
  gem.summary       = %q{Yet another Google Analytics integration}
  gem.homepage      = "https://github.com/opahk/yaga"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "rails", "> 3.1"

  gem.add_development_dependency "rspec-rails"
  gem.add_development_dependency "coveralls"
  gem.add_development_dependency "appraisal"
  if ENV['RUBY_VERSION'] =~ /rbx/
    gem.add_dependency 'rubysl'
    gem.add_dependency 'racc'
    gem.add_development_dependency 'rubysl-test-unit'
    gem.add_development_dependency 'rubinius-coverage'
  end
end
