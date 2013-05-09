source 'https://rubygems.org'
ruby "1.9.3"
gem 'rails', '~> 3.2'
gem 'slim'
gem 'simple_form'
gem 'simplecov', :require => false, :group => :test
gem 'rufus-scheduler' # to keep app loaded on heroku, prevent it from shutting down
gem 'compass'
gem 'compass-normalize'
gem 'truncate_html'
gem 'coderay'
gem 'RedCloth'
gem 'redcarpet'

gem 'carrierwave'
gem 'cloudinary'

gem 'activeadmin'
gem 'disqus'

group :development do
  gem 'sqlite3'
  gem 'slim-rails'
end
group :production do
  gem 'pg'
end

group :development, :test do
  gem 'minitest-reporters'
  gem 'rspec-rails'
  gem 'factory_girl_rails'
end

gem 'json'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2'
  gem 'coffee-rails', '~> 3.2'
  gem 'compass-rails'
  gem 'susy'
  gem 'font-awesome-rails'
  gem 'compass-susy-plugin'
  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby
  gem 'sassy-buttons'
  gem 'uglifier', '>= 1.0'
  gem 'slim-rails'
end

gem 'jquery-rails'
