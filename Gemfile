source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.2.2'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 7.0', '>= 7.0.6'

# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'

# Avoid Ruby 3.1.1 errors
gem 'psych', '< 4'

# Use Puma as the app server
gem 'puma', '~> 4.1'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 4.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'

# Use Redis adapter to run Action Cable
gem 'redis'

# Hotwire (turbo added via yarn)
gem 'hotwire-rails'

# View Components
gem "view_component"

# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

# # Authentication
# gem 'devise'
gem 'devise', git: 'https://github.com/heartcombo/devise', branch: 'main'
gem 'rolify'
gem 'cancancan'

# Secrets (application.yml)
gem 'figaro'

# Analyze PostgreSQL
gem 'pghero'
gem 'pg_query', '>= 0.9.0'

# Analytics
gem 'ahoy_matey'
gem 'geocoder', '~> 1.6', '>= 1.6.7'
gem 'maxminddb'

# Charts
gem 'chartkick'
gem 'groupdate'

# Twilio API
gem 'twilio-ruby', '~> 5.45.1'

# Pagination
gem 'will_paginate'

# pretty print (ap ...)
gem 'amazing_print', '~> 1.3'

group :production do
  # Rollabar notifications
  gem 'rollbar'
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails'
  gem 'factory_bot_rails'
  gem 'pry'
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
end

group :development do
  # Static analysis for security vulnerabilities
  gem 'brakeman'
  gem 'bundler-audit'
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring', '~> 4.1'
end

group :test do
  gem 'database_cleaner'
  gem 'simplecov', require: false
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'
end

# # Windows does not include zoneinfo files, so bundle the tzinfo-data gem
# gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
