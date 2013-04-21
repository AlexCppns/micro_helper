# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'microformats-helper/version'

Gem::Specification.new do |gem|
  gem.name          = "microformats-helper"
  gem.version       = Microformats::Helper::VERSION
  gem.authors       = ["Alexandre Coppens"]
  gem.email         = ["alexcppns@gmail.com"]
  gem.description   = "Helper for microformats, possibility of nesting."
  gem.summary       = "Helper for microformats, possibility of nesting."
  gem.homepage      = "http://github.com/AlexCppns/microformats-helper"
  gem.add_runtime_dependency "activesupport"
  gem.add_dependency "actionpack"
  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
