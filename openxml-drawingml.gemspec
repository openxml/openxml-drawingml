# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "openxml/drawingml/version"

Gem::Specification.new do |spec|
  spec.name          = "openxml-drawingml"
  spec.version       = OpenXml::DrawingML::VERSION
  spec.authors       = ["Amos King", "Bob Lail", "Matt Kobs"]
  spec.email         = ["amos@binarynoggin.com", "bob.lailfamily@gmail.com", "matt.kobs@gmail.com"]

  spec.description   = %q{Build drawingml files for open xml formats}
  spec.summary       = %q{Implements the Office Open XML spec for DrawingML}
  spec.homepage      = "https://github.com/openxml/openxml-drawingml"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.required_ruby_version = ">= 2.3"

  spec.add_dependency "nokogiri"
  spec.add_dependency "openxml-package", "~> 0.3.2"

  spec.add_development_dependency "pry"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rr"
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "timecop"
end
