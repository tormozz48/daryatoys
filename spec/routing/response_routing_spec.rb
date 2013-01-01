require "spec_helper"

describe ResponseController do
  describe "routing" do

    it "routes to #new" do
      get("/response/new").should route_to("response#new")
    end

    it "routes to #create" do
      post("/response").should route_to("response#create")
    end
  end
end
