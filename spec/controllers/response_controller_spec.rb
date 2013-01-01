require 'spec_helper'

describe ResponseController do

  def valid_attributes
    {  }
  end

  def valid_session
    {  }
  end

  describe "GET new" do
    #it "assigns a new comment as @comment" do
    #  get :new, {}, valid_session
    #  assigns(:comment).should be_a_new(Response)
    #end
  end

  describe "POST create" do
    describe "with valid params" do
    #  it "creates a new Response" do
    #    expect {
    #      post :create, {:comment => valid_attributes}, valid_session
    #    }.to change(Response, :count).by(1)
    #  end
    #
    #  it "assigns a newly created comment as @comment" do
    #    post :create, {:comment => valid_attributes}, valid_session
    #    assigns(:comment).should be_a(Response)
    #    assigns(:comment).should be_persisted
    #  end
    #
    #  it "redirects to the created comment" do
    #    post :create, {:comment => valid_attributes}, valid_session
    #    response.should redirect_to(Response.last)
    #  end
    end

    describe "with invalid params" do
      #it "assigns a newly created but unsaved comment as @comment" do
      #  # Trigger the behavior that occurs when invalid params are submitted
      #  Response.any_instance.stub(:save).and_return(false)
      #  post :create, {:comment => {  }}, valid_session
      #  assigns(:comment).should be_a_new(Response)
      #end
      #
      #it "re-renders the 'new' template" do
      #  # Trigger the behavior that occurs when invalid params are submitted
      #  Response.any_instance.stub(:save).and_return(false)
      #  post :create, {:comment => {  }}, valid_session
      #  response.should render_template("new")
      #end
    end
  end
end
