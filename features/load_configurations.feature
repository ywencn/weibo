Feature: Load Configurations
  In order to simplify the configurations
  As a Rails app
  I should load config/weibo.yml automatically

  @disable-bundler
  Scenario: generate a rails 3 application and load weibo configurations
    When I successfully run `bundle exec rails new testapp`
    And I cd to "testapp"
    And I add weibo from this project as a dependency
    When I successfully run `bundle install`
    And I write to "config/weibo.yml" with:
      """
      development:
        api_key: dev_key
        api_secret: dev_secret
      production:
        api_key: prod_key
        api_secret: prod_secret
      test:
        api_key: test_key
        api_secret: test_secret
      """
    When I successfully run `bundle exec rake -T`
    Then the output should contain "rake weibo"
    When I successfully run `bundle exec rake weibo RAILS_ENV=development`
    Then the output should contain "Weibo API Key: dev_key"
    And the output should contain "Weibo API Secret: dev_secret"
    When I successfully run `bundle exec rake weibo RAILS_ENV=production`
    Then the output should contain "Weibo API Key: prod_key"
    And the output should contain "Weibo API Secret: prod_secret"
