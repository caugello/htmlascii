# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'htmlascii/version'

Gem::Specification.new do |spec|
  spec.name          = "htmlascii"
  spec.version       = Htmlascii::VERSION
  spec.authors       = ["Christophe Augello"]
  spec.email         = ["christophe@augello.be"]
  spec.description   = %q{Converts HTML ASCII code to characters and symbols}
  spec.summary       = %q{Converts HTML ASCII code to characters and symbols}
  spec.homepage      = "https://www.github.com/kartouch/htmlascii"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.4"
  spec.add_development_dependency "rake"
end
