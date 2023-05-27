ENV["BUNDLE_GEMFILE"] ||= File.expand_path("../Gemfile", __dir__)

require "bundler/setup" # Set up gems listed in the Gemfile.
require "bootsnap/setup" # Speed up boot time by caching expensive operations.
require 'active_record/railtie'
require_relative '../config/application'

Rails.application.load_tasks
Rake::Task['db:migrate'].invoke