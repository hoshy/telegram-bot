# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'telegram/bot/version'

Gem::Specification.new do |spec|
  spec.name          = 'telegram-bot'
  spec.version       = Telegram::Bot::VERSION
  spec.authors       = ['Max Melentiev']
  spec.email         = ['melentievm@gmail.com']

  spec.summary       = 'Library for building Telegram Bots with Rails integration'
  spec.homepage      = 'https://github.com/telegram-bot-rb/telegram-bot'
  spec.license       = 'MIT'

  spec.metadata      = {
    'rubygems_mfa_required' => 'true',
  }

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^spec/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 3.3'

  spec.add_dependency 'actionpack', '>= 4.0', '< 8.1'
  spec.add_dependency 'activesupport', '>= 4.0', '< 8.1'
  spec.add_dependency 'httpclient', '~> 2.7'

  spec.add_development_dependency 'bundler', '> 2.0'
  spec.add_development_dependency 'rake', '~> 13.0'
end
