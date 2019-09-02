# frozen_string_literal: true

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "jmse/version"

Gem::Specification.new do |spec|
  spec.name          = "jmse"
  spec.version       = JMSE::VERSION
  spec.authors       = ["Tony Arcieri"]
  spec.email         = ["tony@iqlusion.io"]
  spec.summary       = "JSON Message Signing and Encryption (JMSE)"
  spec.description   = <<-DESCRIPTION.strip.gsub(/\s+/, " ")
    An interoperable, minimalist signing and encryption format for JSON messages.
  DESCRIPTION
  spec.license       = "Apache-2.0"
  spec.homepage      = "https://github.com/jmse-json/jmse/tree/master/ruby/"
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.required_ruby_version = ">= 2.5"
  spec.add_development_dependency "bundler", "~> 2.0"
end
