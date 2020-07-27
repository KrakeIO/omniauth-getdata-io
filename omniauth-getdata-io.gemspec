# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth/getdata_io/version'

Gem::Specification.new do |spec|
  spec.name          = "omniauth-getdata-io"
  spec.version       = Omniauth::GetdataIo::VERSION
  spec.authors       = ["Gary Teh"]
  spec.email         = ["garyjob@getdata.io"]
  spec.summary       = %q{A GetDataIO OAuth2 strategy for OmniAuth 1.x}
  spec.description   = %q{A GetDataIO OAuth2 strategy for OmniAuth 1.x. This allows you to login to GetDataIO with your ruby app.}
  spec.homepage      = "https://github.com/krakeio/omniauth-getdata-io"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
