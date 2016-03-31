# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'foundation/datepicker/version'

Gem::Specification.new do |spec|
  spec.name          = "foundation-datepicker"
  spec.version       = Foundation::DatePicker::VERSION
  spec.authors       = ["Eric Roberts"]
  spec.email         = ["ericroberts@gmail.com"]
  spec.summary       = %q{Rails wrapper for foundation-datepicker.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency "railties", ">= 4"
end
