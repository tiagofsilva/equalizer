lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name        = 'equivalence'
  spec.version     = '0.1'
  spec.authors     = ['Tiago Silva (tiagofsilva)']
  spec.email       = %w[aeroboom@gmail.com ]
  spec.description = 'Module to define equivalence method (eqvl?)'
  spec.summary     = spec.description
  spec.homepage    = 'https://github.com/tiagofsilva/equivalence'
  spec.licenses    = 'MIT'

  spec.require_paths    = %w[lib]
  spec.files            = `git ls-files`.split("\n")
  spec.test_files       = `git ls-files -- spec/{unit,integration}`.split("\n")
  spec.extra_rdoc_files = %w[LICENSE README.md CONTRIBUTING.md]

  spec.required_ruby_version = '>= 2.0.0'

  spec.add_development_dependency "bundler", "~> 1.13"
end
