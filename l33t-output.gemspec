# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'l33t-output/version'

Gem::Specification.new do |gem|
  gem.name          = "l33t-output"
  gem.version       = L33tOutput::VERSION
  gem.authors       = ["Ben Olive"]
  gem.email         = ["ben.olive@gatech.edu"]
  gem.description   = %q{Make your output look l33t}
  gem.summary       = %q{Make your output look l33t}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
