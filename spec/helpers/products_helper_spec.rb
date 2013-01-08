require 'spec_helper'

describe ProductsHelper do
  fixtures :product_statuses

  it "should return success for exist" do
    product_status = product_statuses(:product_status0)
    get_class_by_product_status(product_status).should == "label label-success"
  end

  it "should return warning for order" do
    product_status = product_statuses(:product_status1)
    get_class_by_product_status(product_status).should == "label label-warning"
  end
end
