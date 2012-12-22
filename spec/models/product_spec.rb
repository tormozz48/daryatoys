require 'spec_helper'

describe Product do

  fixtures :products

  before :each do
    @product = products(:product1)
  end

  it { should validate_presence_of(:name) }

  it { should validate_presence_of(:description) }

  it { should validate_presence_of(:price) }

  it { should validate_presence_of(:enabled) }

  it { should validate_presence_of(:category_id) }

  it { should validate_presence_of(:product_status_id) }

  it { should validate_uniqueness_of(:name) }

  it { should ensure_length_of(:name).is_at_least(3) }

  it { should ensure_length_of(:name).is_at_most(255) }

  it { should ensure_length_of(:description).is_at_least(0) }

  it { should ensure_length_of(:description).is_at_most(2000) }

  #it { should ensure_inclusion_of(:enabled).in_array([true, false])}

  #it { should validate_numericality_of(:price).only_integer }

  it "price should be integer value " do
    @product.should be_valid
    @product.price = 0.1
    @product.should_not be_valid
  end

  it "price should be greater or equal to 0" do
    @product.should be_valid
    @product.price = -1
    @product.should_not be_valid
  end

  it { should belong_to(:category) }

  it { should belong_to(:product_status) }

  it { should have_many(:product_images) }

  it { should have_many(:product_orders) }

  it { should accept_nested_attributes_for(:product_images) }

  it { should allow_mass_assignment_of(:name) }

  it { should allow_mass_assignment_of(:description) }

  it { should allow_mass_assignment_of(:enabled) }

  it { should allow_mass_assignment_of(:price) }

  it { should allow_mass_assignment_of(:category) }

  it { should allow_mass_assignment_of(:category_id) }

  it { should allow_mass_assignment_of(:product_status) }

  it { should allow_mass_assignment_of(:product_status_id) }

  it { should allow_mass_assignment_of(:product_images) }

  it { should allow_mass_assignment_of(:product_orders) }



end
