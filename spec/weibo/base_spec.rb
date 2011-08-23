require 'spec_helper'

describe Weibo::Base do

  before(:each) do
    @client = create_weibo_client
  end

  describe "#trends_statuses" do
    it "pass query argument" do
      @client = create_weibo_client
      @client.stub(:perform_post)
      @client.should_receive(:perform_post).with("/trends/statuses.json", {:body => {:count=>1999, :trend_name => "cat", :page =>5 }})
      @client.trends_statuses('cat', {:page => 5, :count => 1999})
    end

  end
end
