source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.3.0"

gem 'pg', '~> 1.5', '>= 1.5.4'
gem 'puma', '~> 6.4'
gem 'rails', '~> 7.1', '>= 7.1.2'

gem 'pagy', '~> 6.2'
gem 'active_model_serializers', '~> 0.10.14'
gem 'paranoia', '~> 2.6', '>= 2.6.3'
gem 'sidekiq', '~> 7.2'
gem 'sidekiq-cron', '~> 1.11'

gem 'devise-api'


gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false

group :development, :test do
  gem 'brakeman', '~> 6.1', '>= 6.1.1'
  gem 'bundle-audit', '~> 0.1.0'
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'dotenv-rails', '~> 2.8', '>= 2.8.1'
  gem 'faker', '~> 3.2', '>= 3.2.2'
  gem 'pry', '~> 0.14.2'
  gem 'rubocop-rails', '~> 2.22', '>= 2.22.1', require: false
end

group :development do
end

