# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ffi-libarchive/version'

Gem::Specification.new do |s|
  s.name = 'ffi-libarchive'
  s.version = Archive::VERSION
  s.authors = ['John Bellone', 'Jamie Winsor', 'Frank Fischer']
  s.email = %w{jbellone@bloomberg.net jamie@vialstudios.com frank-fischer@shadow-soft.de}
  s.description = 'A Ruby FFI binding to libarchive.'
  s.summary = s.description
  s.homepage = 'https://github.com/johnbellone/ffi-libarchive'
  s.license = 'GPL 3.0'

  s.files = `git ls-files`.split($/)
  s.test_files = s.files.grep(%r{^(test)/})
  s.require_paths = %w{lib}
  s.required_ruby_version = '>= 1.9'

  s.add_dependency 'ffi', '~> 1.0'

  s.add_development_dependency 'bundler'
  s.add_development_dependency 'rake'
end