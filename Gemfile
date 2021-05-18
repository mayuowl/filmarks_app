source "https://rubygems.org"
git_source(:github) {|repo| "https://github.com/#{repo}.git" }

ruby "2.5.1"

gem "mysql2"
gem "puma", "~> 4.3"
gem "rails", "~> 5.2.1"
gem "webpacker"

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

gem "bootsnap", ">= 1.1.0", require: false
gem "enumerize"

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
# gem 'rack-cors'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  gem "pry-byebug"
  gem "pry-rails"
  gem "rspec-rails", "~> 3.8"
end

group :development do
  gem "annotate"
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "onkcop", require: false
  gem "rails-erd"
  gem "seed-fu", "~> 2.3"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "foreman"
end

group :test do
  gem "database_cleaner"
  gem "factory_bot_rails"
  gem "faker"
end

gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
