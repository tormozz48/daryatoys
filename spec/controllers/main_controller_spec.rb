require 'spec_helper'

describe MainController do

  fixtures :contacts
  fixtures :news

  def valid_attributes
    {  }
  end

  def valid_session
    {  }
  end

  describe "GET index" do
    it "should render index page" do
      get :index, { }, valid_session
      #@contact.should_not == nil
      #@news.size.should <= 10
      response.should render_template(:index)
    end
  end
end
