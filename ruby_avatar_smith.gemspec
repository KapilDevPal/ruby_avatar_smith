# frozen_string_literal: true

require_relative 'lib/ruby_avatar_smith/version'

Gem::Specification.new do |spec|
  spec.name          = 'ruby_avatar_smith'
  spec.version       = RubyAvatarSmith::VERSION
  spec.authors       = ['KapilDevPal']
  spec.email         = ['dev.kapildevpal@gmail.com']
  spec.summary       = 'A Ruby gem for generating avatars with user initials.'
  spec.description   = 'ruby_avatar_smith is a Ruby gem that provides functionality to generate avatars with user initials. It can be used to create profile pictures dynamically.'
  spec.homepage      = 'https://github.com/KapilDevPal/ruby_avatar_smith'
  spec.license       = 'MIT'

  spec.files         = Dir['lib/**/*.rb']
  spec.bindir        = 'exe'
  spec.executables   = []
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 3.0'

  spec.add_dependency 'rmagick', '~> 4.0'

  spec.metadata['allowed_push_host'] = "https://rubygems.org"

  spec.metadata['homepage_uri']     = spec.homepage
  spec.metadata['source_code_uri']  = 'https://github.com/KapilDevPal/ruby_avatar_smith'
  spec.metadata['changelog_uri']    = 'https://github.com/KapilDevPal/ruby_avatar_smith/blob/main/CHANGELOG.md'
end
