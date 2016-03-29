# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "administrate-field-type"
  spec.version       = "0.1.0"
  spec.authors       = ["Rich Daley"]
  spec.email         = ["rich@fishpercolator.co.uk"]

  spec.summary       = %q{Administrate field for Single Table Inheritance (STI)}
  spec.description   = %q{Adds an Administrate::Field::Type for allowing the selection of an STI subtype in dashboards.}
  spec.homepage      = "https://github.com/fishpercolator/administrate-field-type"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'administrate', '~> 0.1'

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "active_record" # any version will do
end
