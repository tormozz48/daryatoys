require 'spec_helper'

describe OrdersController do

  def valid_attributes
    {  }
  end

  def valid_session
    {  }
  end

  #describe "GET new" do
  #  it "assigns a new product_order as @product_order" do
  #    get :new, {}, valid_session
  #    assigns(:product_order).should be_a_new(ProductOrder)
  #  end
  #end
  #
  #describe "POST create" do
  #  describe "with valid params" do
  #    it "creates a new ProductOrder" do
  #      expect {
  #        post :create, {:product_order => valid_attributes}, valid_session
  #      }.to change(ProductOrder, :count).by(1)
  #    end
  #
  #    it "assigns a newly created product_order as @product_order" do
  #      post :create, {:product_order => valid_attributes}, valid_session
  #      assigns(:product_order).should be_a(ProductOrder)
  #      assigns(:product_order).should be_persisted
  #    end
  #
  #    it "redirects to the created product order" do
  #      post :create, {:product_order => valid_attributes}, valid_session
  #      response.should redirect_to(ProductOrder.last)
  #    end
  #  end
  #
  #  describe "with invalid params" do
  #    it "assigns a newly created but unsaved order as @order" do
  #      # Trigger the behavior that occurs when invalid params are submitted
  #      ProductOrder.any_instance.stub(:save).and_return(false)
  #      post :create, {:order => {  }}, valid_session
  #      assigns(:order).should be_a_new(ProductOrder)
  #    end
  #
  #    it "re-renders the 'new' template" do
  #      # Trigger the behavior that occurs when invalid params are submitted
  #      ProductOrder.any_instance.stub(:save).and_return(false)
  #      post :create, {:product_order => {  }}, valid_session
  #      response.should render_template("new")
  #    end
  #  end
  #end

end
