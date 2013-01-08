require "spec_helper"

describe DeliveryController do
  describe "routing" do

    it "routes to #index" do
      get("/delivery").should route_to("delivery#index")
    end

  end
end
