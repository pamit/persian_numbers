require_relative 'lib/persian_numbers/version'

Gem::Specification.new do |spec|
  spec.name          = 'persian_numbers'
  spec.version       = PersianNumbers::VERSION
  spec.authors       = ['Payam Mousavi']
  spec.email         = ['pamit.edu@gmail.com']

  spec.summary       = 'This gem serves as a set of utility functions for Persian numbers.'
  spec.description   = 'This gem serves as a set of utility functions for Persian numbers.'
  spec.homepage      = 'https://github.com/pamit/persian_numbers'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.4.6')

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/pamit/persian_numbers'
  spec.metadata['changelog_uri'] = 'https://github.com/pamit/persian_numbers/CHANGELOG.md'

  spec.files = Dir["{lib,spec,demo}/**/*", "[a-zA-Z]*"]
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'byebug'
  spec.add_development_dependency 'coveralls'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rubocop'
end
