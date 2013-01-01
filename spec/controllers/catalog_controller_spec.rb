require 'spec_helper'

describe CatalogController do

  def valid_attributes
    {  }
  end

  def valid_session
    {  }
  end

  describe "GET index" do
    it "should render index page" do
      get :index, {}, valid_session
      response.should render_template(:index)
    end
  end
end
