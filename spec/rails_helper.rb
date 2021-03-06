ENV["RAILS_ENV"] ||= "test"

require File.expand_path("../config/environment", __dir__)
require "spec_helper"
require "rspec/rails"
require "database_cleaner"

abort("The Rails environment is running in production mode!") if Rails.env.production?
Dir[Rails.root.join("spec/support/**/*.rb")].each {|f| require f }
ActiveRecord::Migration.maintain_test_schema!
DatabaseCleaner.strategy = :truncation
Faker::Config.locale = :en

RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods

  config.fixture_path = "#{::Rails.root}/spec/fixtures"
  config.use_transactional_fixtures = true
  config.infer_spec_type_from_file_location!
  config.filter_rails_from_backtrace!
end
