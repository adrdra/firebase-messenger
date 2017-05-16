lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'firebase_messenger/version'

Gem::Specification.new do |gem|
  gem.name        = 'firebase_messenger'
  gem.version     = FirebaseMessenger::VERSION
  gem.date        = '2017-05-16'
  gem.summary     = 'FirebaseMessenger permit you to send Push Notifications to your users!'
  gem.description = 'FirebaseMessenger permit you to send Push Notifications to your users!'
  gem.authors     = ['Alexis Delvaque']
  gem.email       = 'alexis@qonto.eu'
  gem.files       = ['lib/qonto_messenger.rb']
  gem.license     = 'MIT'

  gem.required_ruby_version     = '>= 2.2'
  gem.required_rubygems_version = '>= 1.8.11'

  gem.require_paths = ['lib']

  gem.add_dependency 'httpclient', '~> 2.7', '>= 2.7.1'
  gem.add_dependency 'faraday', '~> 0'
  gem.add_dependency 'pry', '~> 0.10'

  gem.add_development_dependency 'bundler', '~> 1.7'
  gem.add_development_dependency 'rspec', '~> 3.1'
  gem.add_development_dependency 'simplecov'
end
