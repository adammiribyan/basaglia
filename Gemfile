source 'https://rubygems.org'

gem 'rails', '3.2.8.rc2'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'mysql2'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'

  gem 'bourbon'
  gem 'neat', '~> 0.4.2'
end

gem 'jquery-rails'

# Forms
gem 'simple_form'

gem 'mail_form'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
gem 'unicorn'

# Deploy with Capistrano
gem 'capistrano'

group :development do
  gem 'letter_opener'
  gem 'guard'
  gem 'guard-livereload'
end

# To use debugger
# gem 'debugger'

group :test do
  # Capybara for integration tests
  gem 'capybara'
  gem 'database_cleaner'
  # Girls in factories
  gem 'factory_girl_rails'
  # Spork
  gem 'spork', '~> 0.9.0.rc'
  gem 'spork-testunit'
  gem 'ruby-prof' # for benchmarks
  # Guards
  gem 'guard-spork'
  gem 'guard-test', "~> 0.4.3"
end
