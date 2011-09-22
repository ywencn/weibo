require 'aruba/cucumber'

PROJECT_ROOT = File.expand_path("../../..", __FILE__).freeze
puts PROJECT_ROOT

Before do
  @aruba_timeout_seconds = 3600
end
