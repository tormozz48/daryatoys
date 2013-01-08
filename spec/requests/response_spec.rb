require 'spec_helper'

describe "Response" do
  fixtures :contacts
  fixtures :news

  describe "GET /response/new" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get new_response_path
      response.status.should be(200)
    end
  end

  describe "POST /response" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      post response_index_path
      response.status.should be(200)
    end
  end
end
