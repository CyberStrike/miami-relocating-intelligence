source 'https://rubygems.org'

ruby '2.2.0'

gem 'rails' # Choo Choo

# Libraries
####################

gem 'devise' # User Authentication
gem 'thin' # Use Thin as Server
gem 'chartkick' # For the charts
gem 'httparty'


group :development, :test do
  gem 'sqlite3' # SQLite3 DB
  gem 'rspec-rails' # Test Helper
  gem 'capybara' # Feature Testing
  gem 'factory_girl_rails' #
  gem 'ffaker' # Random Fake Info
  gem 'selenium-webdriver'
end

group :development do

  gem 'spring',  group: :development

  # Debuggers
  gem 'pry'
  gem 'pry-byebug'
  gem 'awesome_print'
  gem 'better_errors' # Better Errors
  gem 'binding_of_caller' # Better Debugging
end

group :production do
  gem 'pg' # Postgresql DB
  gem 'rails_12factor' # Heroku asset handler
end


## Views
####################

gem 'sass-rails' # Use SCSS for stylesheets
gem 'bootstrap-sass' # Pull our selves up by our Bootstraps
gem 'slim-rails' # Lose some weight

gem 'uglifier' # Use Uglifier as compressor for JavaScript assets
gem 'coffee-rails'

gem 'therubyracer', platforms: :ruby
gem 'jquery-rails' # jQuery
gem 'turbolinks' # AJAXED Page Gets
gem 'jbuilder' # JSON APIs with ease
gem 'tzinfo-data', platforms: [:mingw, :mswin] # Rails Core Windows Dependency, Provides Time Zone Info

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end