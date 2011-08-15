require 'rubygems'
require 'bundler/setup'
require 'rake'
require 'rspec/core/rake_task'

desc 'Default: Run the specs'
task :default => 'spec:unit'

namespace :spec do
  desc 'Run unit specs'
  RSpec::Core::RakeTask.new('unit') do |t|
    t.pattern = 'spec/{*_spec.rb,weibo/**/*_spec.rb}'
  end
end
task :spec => 'spec:unit'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "weibo"
    gem.summary = %Q{a gem to help api integration for 新浪微博 (t.sina.com.cn)}
    gem.description = %Q{this gem is an adaptation of John Nunemaker's Twitter gem.  I modified it to make api integration for 新浪微博 (t.sina.com.cn) easier.}
    gem.email = "ussballantyne@gmail.com"
    gem.homepage = "http://github.com/ballantyne/weibo"
    gem.authors = ["Scott Ballantyne"]
    gem.add_development_dependency "thoughtbot-shoulda", ">= 0"
    gem.add_dependency "oauth", "~> 0.4.1"
    gem.add_dependency "hashie"
    gem.add_dependency "httparty", ">= 0.5.2"
    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end
