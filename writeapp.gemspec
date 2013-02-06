# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'writeapp/version'

Gem::Specification.new do |gem|
  gem.name          = "writeapp"
  gem.version       = Writeapp::VERSION
  gem.authors       = ["Bill Patrianakos"]
  gem.email         = ["bill@writeapp.me"]
  gem.description   = "The official Write.app platform Gem"
  gem.summary       = "Write and manage your entire Write.app account from the command line"
  gem.homepage      = "https://writeapp.me/gem"

  # gem.files         = `git ls-files`.split($/)
  gem.files         = Dir.glob("{bin,lib}/**/*")
  gem.executables << 'writeapp'
  # gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
