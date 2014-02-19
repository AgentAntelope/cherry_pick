# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cherry_pick/version'

Gem::Specification.new do |spec|
  spec.name          = "overload"
  spec.version       = CherryPick::VERSION
  spec.authors       = ["Alex Sunderland"]
  spec.email         = ["alex.sunderland@gmail.com"]
  spec.description   = "Cherry pick the methods you want."
  spec.summary       = "A gem that allows cherry picking a single method from a required class or module."
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"
end
