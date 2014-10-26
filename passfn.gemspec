# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'passfn/version'

Gem::Specification.new do |spec|
  spec.name          = "passfn"
  spec.version       = Passfn::VERSION
  spec.authors       = ["Yutaka ICHIBANGASE"]
  spec.email         = ["yichiban@gmail.com"]
  spec.summary       = "passfn - tiny password generator"
  spec.description   = <<-EOD
    passfn provides a cli command to generate a password
    from a domain and a master passphrase.
  EOD
  spec.homepage      = "https://github.com/ichiban/passfn"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_runtime_dependency "thor", "~> 0.19.1"
  spec.add_runtime_dependency "clipboard", "~> 1.0.5"
end
