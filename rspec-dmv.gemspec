# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rspec/dmv/version'

Gem::Specification.new do |spec|
  spec.name          = "rspec-dmv"
  spec.version       = Rspec::Dmv::VERSION
  spec.authors       = ["sivagollapalli"]
  spec.email         = ["siva@joshsoftware.com"]
  spec.summary       = %q{RSpec extension gem for generating validation speccifications}
  spec.description   = %q{Generate validation specifications for rails models}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec-core", ">= 3.0"
  spec.add_dependency "shoulda-matchers", ">= 2.6.1"
end
