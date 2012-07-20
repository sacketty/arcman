source 'https://rubygems.org'

gem 'rails', '3.2.3'
gem 'sqlite3'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'mongoid'
gem 'bson_ext'
gem 'aws-s3'
gem 'thin'
gem 'kaminari'
gem 'prawn'
gem 'carrierwave'
gem 'carrierwave-mongoid', :require => 'carrierwave/mongoid'
gem 'fog', '~> 1.4.0'
gem 'backbone-on-rails'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer', :platform => :ruby

  gem 'uglifier', '>= 1.0.3'
  gem 'twitter-bootstrap-rails'
end

group :test do
  gem 'annotate', '~> 2.4.1.beta'
  gem 'capybara'
  gem 'launchy'
  gem 'database_cleaner'
  gem 'rspec-rails', '2.9.0'
  gem 'rb-inotify' if RUBY_PLATFORM.downcase.include?("linux")
  gem 'rb-fsevent' if RUBY_PLATFORM.downcase.include?("darwin")
  gem 'libnotify', '0.5.9'
  gem 'guard-spork', '0.3.2'
  gem 'spork', '0.9.0'
  gem 'factory_girl_rails'
  gem 'shoulda'
  gem 'mocha'
end         

gem 'jquery-rails'

gem 's3_swf_upload', :git => 'git://github.com/nathancolgate/s3-swf-upload-plugin'
gem 'faker', :group=>[:development, :test]
