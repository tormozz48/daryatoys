require "spec_helper"

describe MainController do
  describe "routing" do

    it "routes to #index" do
      get("/main").should route_to("main#index")
    end

  end
end
