source 'https://rubygems.org'

ruby '2.2.2'
gem 'rails', '4.2.3'
gem 'sass-rails'
gem 'bower'
gem 'pg'
gem 'jbuilder', '~> 2.0'
gem 'uglifier', '>= 1.3.0'
gem 'unicorn'
# gem 'bcrypt', '~> 3.1.7'
# gem 'active_hash'
gem 'devise_token_auth'
gem 'rack-cors'
gem 'omniauth'
gem 'font-awesome-sass'
gem "validate_url"
gem 'figaro'

# heroku config:set BUILDPACK_URL='git://github.com/qnyp/heroku-buildpack-ruby-bower.git#run-bower'
gem 'rails_12factor', group: :production

group :development, :test do
  gem "web-console"
  gem "better_errors"
  gem "binding_of_caller"
  gem 'pry-rails'
  gem 'pry-byebug'
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'faker'
end

group :test do
  gem "awesome_print"
  gem "bundler-audit", require: false
  gem "byebug"
  gem "dotenv-rails"
  gem 'database_cleaner'
  gem 'shoulda-matchers'
  gem 'capybara'
  gem 'poltergeist'
  gem 'launchy'
end