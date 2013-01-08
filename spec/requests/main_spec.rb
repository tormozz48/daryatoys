require 'spec_helper'

describe "Main" do

  fixtures :contacts
  fixtures :news

  describe "GET /main" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get main_index_path
      response.status.should be(200)
    end
  end
end
