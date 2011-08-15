When /^I add weibo from this project as a dependency$/ do
  append_to_file('Gemfile', %{gem "weibo", :path => "#{PROJECT_ROOT}"})
end
