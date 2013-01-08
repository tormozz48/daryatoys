require 'spec_helper'

describe "Delivery" do

  fixtures :contacts
  fixtures :news

  describe "GET /delivery" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get delivery_index_path
      response.status.should be(200)
    end
  end
end
