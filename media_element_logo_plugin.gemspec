# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'media_element_logo_plugin/version'

Gem::Specification.new do |spec|
  spec.name          = 'media_element_logo_plugin'
  spec.version       = MediaElementLogoPlugin::VERSION
  spec.authors       = ['Adam Hallett']
  spec.email         = ['adam.t.hallett@gmail.com']
  spec.summary       = %q{A media element plugin for adding a logo to the scrubber bar.}
  spec.description   = %q{The logo on the scrubber bar opens a window or links back to the original page.}
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'guard-coffeescript'

  spec.add_dependency 'rails', '~> 3.2.3'

end
