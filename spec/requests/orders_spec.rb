require 'spec_helper'

describe "Orders" do
  fixtures :products
  fixtures :product_statuses
  fixtures :product_orders

  describe "GET /orders/new" do
    it "works! (now write some real specs)" do
      product = products(:product1)
      get new_order_path(:product_id => product.id)
      response.status.should be(200)
    end
  end

  describe "POST /orders" do
    it "works! (now write some real specs)" do
      post orders_path
      response.status.should be(200)
    end
  end
end
