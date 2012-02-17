require File.expand_path('../../spec_helper', __FILE__)

describe "Beetil Gem" do
  it "should configure correctly" do
    Beetil.configure do |config|
      config.base_url  = "https://youraccount.beetil.com/external_api/v1"
      config.api_token = "your_basic_auth_api_token"
    end

    Beetil.base_url.should == "https://youraccount.beetil.com/external_api/v1"
    Beetil.api_token.should == "your_basic_auth_api_token"
  end
end

