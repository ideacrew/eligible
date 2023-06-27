# frozen_string_literal: true

require_relative "support/coverage"

require "bundler/setup"
begin
  require "pry"
rescue LoadError
end

SPEC_ROOT = Pathname(__dir__)

Dir[SPEC_ROOT.join("shared/**/*.rb")].each(&method(:require))
Dir[SPEC_ROOT.join("support/**/*.rb")].each(&method(:require))

ENV["RAILS_ENV"] ||= "test"

RAILS_VERSION = ENV["RAILS_VERSION"] || "7.x"

require SPEC_ROOT.join("dummy-#{RAILS_VERSION}/dummy/config/environment").to_s

require "eligible"

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
