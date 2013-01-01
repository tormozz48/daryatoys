require 'spec_helper'

describe ProductsController do

  def valid_attributes
    {name: "Product Name 1",
     description: "Product Description 1",
     enabled: true,
     price: 100,
     product_status_id: 0,
     category_id: 1
    }
  end

  def valid_session
    {  }
  end

  describe "GET show" do
    it "assigns the requested product as @product" do
      product = Product.create! valid_attributes
      get :show, {:id => product.to_param}, valid_session
      assigns(:product).should eq(product)
    end
  end

end
