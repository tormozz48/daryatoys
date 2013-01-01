require "spec_helper"

describe CommentsController do
  describe "routing" do

    it "routes to #index" do
      get("/comments").should route_to("comments#index")
    end

    it "routes to #new" do
      get("/comments/new").should route_to("comments#new")
    end

    it "routes to #create" do
      post("/comments").should route_to("comments#create")
    end

  end
end
