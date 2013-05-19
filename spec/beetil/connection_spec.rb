require 'spec_helper'

describe Beetil::Connection do
  before do
    WebMock.disable_net_connect!
  end
  after do
    WebMock.reset!
    WebMock.allow_net_connect!
  end

  it 'should initialize with the base_url' do
    Beetil::Connection.new('http://base.example.com', 'token').base_url.should == 'http://base.example.com'
  end

  it 'should initialize with the right token' do
    Beetil::Connection.new('http://base.example.com', 'abcd').token.should == 'abcd'
  end

  it "should GET the right url" do
    connection = Beetil::Connection.new('http://base.example.com', 'token')

    stub = stub_request(:get, "http://x:token@base.example.com/path")
    connection.get('/path')
    stub.should have_been_requested
  end
end
