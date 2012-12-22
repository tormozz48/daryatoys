require 'spec_helper'

describe ProductOrder do

  fixtures :product_orders

  before :each do
    @product_order = product_orders(:product_order1)
  end

  it { should validate_presence_of(:email) }

  it { should validate_presence_of(:phone) }

  it { should validate_presence_of(:first_name) }

  it { should validate_presence_of(:last_name) }

  it { should validate_presence_of(:product_id) }

  it { should validate_presence_of(:order_status_id) }

  it { should belong_to(:product) }

  it { should belong_to(:order_status) }

  it { should ensure_length_of(:email).is_at_most(100)}

  it { should ensure_length_of(:phone).is_at_most(20)}

  it { should ensure_length_of(:first_name).is_at_most(30)}

  it { should ensure_length_of(:last_name).is_at_most(30)}

  it { should ensure_length_of(:comment).is_at_most(255)}

  it "product_id should be integer value " do
    @product_order.should be_valid
    @product_order.product_id = 0.1
    @product_order.should_not be_valid
  end

  it "product_id should be greater or equal to 0" do
    @product_order.should be_valid
    @product_order.product_id = -1
    @product_order.should_not be_valid
  end

  it "order_status_id should be integer value " do
    @product_order.should be_valid
    @product_order.order_status_id = 0.1
    @product_order.should_not be_valid
  end

  it "order_status_id should be greater or equal to 0" do
    @product_order.should be_valid
    @product_order.order_status_id = -1
    @product_order.should_not be_valid
  end

  it { should allow_mass_assignment_of(:email) }

  it { should allow_mass_assignment_of(:phone) }

  it { should allow_mass_assignment_of(:first_name) }

  it { should allow_mass_assignment_of(:last_name) }

  it { should allow_mass_assignment_of(:comment) }

  it { should allow_mass_assignment_of(:product_id) }

  it { should allow_mass_assignment_of(:order_status_id) }

  it { should allow_mass_assignment_of(:humanizer_question_id) }

  it { should allow_mass_assignment_of(:humanizer_answer) }

end
