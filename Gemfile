source 'https://rubygems.org'
ruby '2.2.1'

gem 'rails'
gem 'responders'

# Server
gem 'puma'
gem 'unicorn-rails'

# Database
gem 'pg'

# KVS
gem 'hiredis'
gem 'moneta'
gem 'redis', require: %w(redis redis/connection/hiredis)
gem 'redis-namespace'
gem 'redis-objects', require: 'redis/objects'
gem 'redis-rack-cache'
gem 'redis-rails'
gem 'redis-session-store'

# APIs
gem 'omniauth'
gem 'omniauth-github'
gem 'octokit'
gem 'github_api'
gem 'pusher'

# Assets
gem 'browserify-rails', '~> 0.5'
gem 'coffee-rails'
gem 'hamlit'
gem 'jade-rails'
gem 'jbuilder'
gem 'react-rails', github: 'reactjs/react-rails'
gem 'sass-rails'
gem 'therubyracer', platforms: :ruby
gem 'turbolinks'
gem 'uglifier'

# Models
gem 'active_hash'
gem 'paper_trail', '~> 4.0.0.beta2'

# Views
gem 'bootstrap-sass'
gem 'jquery-rails'
gem 'kaminari'
gem 'zocial-rails'

# Helpers
gem 'high_voltage'
gem 'parallel'

# Middleware
gem 'faraday-http-cache'
gem 'faraday-lazyable'
gem 'faraday_api_cache'
gem 'typhoeus', require: 'typhoeus/adapters/faraday'

# Data serialize
gem 'msgpack'

# Background
gem 'sidekiq'
gem 'sinatra', require: false
gem 'slim'

# Performance
gem 'bugsnag'
gem 'newrelic-faraday'
gem 'newrelic-redis'
gem 'newrelic_rpm'
gem 'peek'
gem 'peek-faraday'
gem 'peek-gc'
gem 'peek-git'
gem 'peek-performance_bar'
gem 'peek-pg'
gem 'peek-rblineprof'
gem 'peek-redis'
gem 'peek-sidekiq'
gem 'pygments.rb', :require => false
gem 'skylight'

group :development do
  gem 'awesome_print'
  gem 'annotate'
  gem 'better_errors'
  gem 'binding_of_caller', '>= 0.7.3.pre1'
  gem 'brakeman', :require => false
  gem 'bullet'
  gem 'capistrano'
  gem 'capistrano-bundler'
  gem 'capistrano-rails'
  gem 'capistrano-rails-console'
  gem 'debase', '>= 0.1.3.beta1'
  gem 'did_you_mean'
  gem 'dotenv-rails'
  gem 'meta_request'
  gem 'pry-rails'
  gem 'quiet_assets'
  gem 'rack-mini-profiler'
  gem 'rails-footnotes'
  gem 'rails_layout'
  gem 'rubocop', require: false
  gem 'ruby-debug-ide'
  gem 'tapp'
  gem 'view_source_map'
end

group :development, :test do
  gem 'byebug', require: !ENV['RM_INFO']
  gem 'byebug-color-printer'
  gem 'capybara'
  gem 'database_cleaner'
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'launchy'
  gem 'parallel_tests'
  gem 'pry-byebug'
  gem 'rspec-rails'
  gem 'spring'
  gem 'spring-commands-rspec'
  gem 'web-console'
end

group :test do
  gem 'json_spec'
  gem 'rspec-sidekiq'
  gem 'fakeredis', require: 'fakeredis/rspec'
  gem 'selenium-webdriver'
end

group :production do

end