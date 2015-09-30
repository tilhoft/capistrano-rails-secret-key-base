# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano/secret_key_base/version'

Gem::Specification.new do |spec|
  spec.name          = "capistrano-rails-secret-key-base"
  spec.version       = Capistrano::SecretKeyBase::VERSION
  spec.authors       = ['tobias tilhof']
  spec.email         = ['mozestobi@gmail.com']

  spec.summary       = %q{by this gem you can update rails's secret key base on production by capistrano}
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'http://RubyGems.org'
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "capistrano",  "~> 3.1"
end
