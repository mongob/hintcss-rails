# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hintcss-rails/version'

Gem::Specification.new do |spec|
  spec.name = "hintcss-rails"
  spec.version = Hintcss::VERSION
  spec.authors = ["Wilkin Novo"]
  spec.email = ["novos100@gmail.com"]
  spec.homepage = "https://github.com/wilkinn/hintcss-rails"
  spec.description = %q{A tooltip library in CSS for your lovely websites}
  spec.summary = %q{The hintcss-rails project integrates Hintcss tooltip with the Rails' Asset Pipeline}
  spec.license = "MIT"

  spec.files = `git ls-files`.split($/)
  spec.executables = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency("railties", ">= 3.2.6", "< 5")
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end