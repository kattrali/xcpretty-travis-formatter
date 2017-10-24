# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "xcpretty-travis-formatter"
  spec.version       = "1.0.0"
  spec.authors       = ["Delisa Mason"]
  spec.email         = ["iskanamagus@gmail.com"]
  spec.description   =
  %q{
  Formatter for xcpretty customized to provide pretty output on TravisCI
  }
  spec.summary       = %q{xcpretty custom formatter for TravisCI}
  spec.homepage      = "https://github.com/kattrali/xcpretty-travis-formatter"
  spec.license       = "MIT"
  spec.required_ruby_version = "~> 2.0"
  spec.files         = [
  	"README.md",
  	"LICENSE",
  	"lib/travis_formatter.rb",
  	"bin/xcpretty-travis-formatter"]
  spec.executables   = ["xcpretty-travis-formatter"]
  spec.require_paths = ["lib"]
  spec.add_dependency "xcpretty", "~> 0.2", ">= 0.0.7"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "bacon", "~> 1.2"
end
