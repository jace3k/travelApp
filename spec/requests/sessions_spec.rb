require 'rails_helper'

RSpec.describe "Session managment", :type => :request do
  before(:each) do
    objects = RequestHelper.prepare_requests()
    @user = objects[:user]
  end

  it "does not pass afrer bad login" do
    post "/login", params: {
      username: 'abs',
      password: 'vsd'
    }, headers: { 'Accept' => 'application/json', 'Content-Type' => 'application/json' }

    puts response.body
  end
end
