require "spec_helper"

describe PaymentController do
  describe "routing" do

    it "routes to #index" do
      get("/payment").should route_to("payment#index")
    end

  end
end
