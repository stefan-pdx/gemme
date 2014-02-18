# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gemme/version'

Gem::Specification.new do |spec|
  spec.name          = "gemme"
  spec.version       = Gemme::VERSION
  spec.authors       = ["Stefan Novak"]
  spec.email         = ["stefan.louis.novak@gmail.com"]
  spec.description   = %q{Quickly generate a Gemfile entry for a gem.}
  spec.summary       = %q{Output a Gemfile entry for a gem.}
  spec.homepage      = "https://www.github.com/slnovak/gemme"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "gems", "~> 0.8.3"

  spec.add_dependency "commander", "~> 4.1.5"
end
