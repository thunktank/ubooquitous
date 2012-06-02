source 'https://rubygems.org'

gem 'rails', '3.2.3'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

group :production do
  gem 'pg'  
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer', :platform => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# gem 'omniauth-facebook'
# gem 'omniauth-github'
# gem 'omniauth-google-oauth2'
gem 'omniauth-identity'
# gem 'omniauth-twitter'

# To use ActiveModel has_secure_password
gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

# Use RSpec and Cucumber for testing
group :development, :test do 
	gem 'sqlite3'
	gem 'rspec-rails', '>= 2.10.0'
  gem 'factory_girl_rails'
  gem 'shoulda'
end

# Cucumber-rails required outside of env.rb. 
group :test do
#	gem 'ZenTest', '>= 4.8.0'
  gem 'faker'
  gem 'capybara'
  gem 'guard-rspec'
  gem 'launchy'
  gem 'autotest-rails', '>= 4.1.2'
	gem 'cucumber-rails', '>= 1.2.0' 
	gem 'database_cleaner', '>= 0.7.2'
end	
