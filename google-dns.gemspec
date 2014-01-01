# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'google/dns/version'

Gem::Specification.new do |spec|
  spec.name          = "google-dns"
  spec.version       = Google::Dns::VERSION
  spec.authors       = ["Jim Neath"]
  spec.email         = ["jimneath@gmail.com"]
  spec.description   = %q{Make ruby use Google's DNS servers}
  spec.summary       = %q{Use Google's DNS servers'}
  spec.homepage      = "http://jimneath.org"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
