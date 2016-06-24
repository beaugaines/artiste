ENV["RAILS_ENV"] ||= 'test'
require 'spec_helper'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'
require "simplecov"
require 'pry-rails'

SimpleCov.start do
  add_filter "/app/policies/"
  add_group 'Services', '/app/services/'
end

Dir[Rails.root.join("spec/support/**/*.rb")].each { |f| require f }

ActiveRecord::Migration.maintain_test_schema!

RSpec.configure do |config|

  # formulaic for painless form filling
  config.include Formulaic::Dsl, type: :feature

  # block unknown urls for js tests
  config.before(:each, js: true) do
    page.driver.block_unknown_urls
  end

  # If you're not using ActiveRecord, or you'd prefer not to run each of your
  # examples within a transaction, remove the following line or assign false
  # instead of true.
  config.use_transactional_fixtures = false

  # focused specs
  # config.filter_run_including :focus => true
  config.filter_run :focus
  config.run_all_when_everything_filtered = true

  config.infer_spec_type_from_file_location!
end
