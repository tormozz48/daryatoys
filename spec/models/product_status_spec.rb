require 'spec_helper'

describe ProductStatus do

  fixtures :product_statuses

  before :each do
    @product_status = product_statuses(:product_status0)
  end

  it { should validate_presence_of(:code) }

  it { should validate_presence_of(:name) }

  it { should have_many(:products) }

  it { should validate_uniqueness_of(:code)}

  it { should ensure_length_of(:name).is_at_least(3)}

  it { should ensure_length_of(:name).is_at_most(255)}

  it "code should be integer value " do
    @product_status.should be_valid
    @product_status.code = 0.1
    @product_status.should_not be_valid
  end

  it "code should be greater or equal to 0" do
    @product_status.should be_valid
    @product_status.code = -1
    @product_status.should_not be_valid
  end

  it { should allow_mass_assignment_of(:code) }

  it { should allow_mass_assignment_of(:name) }

  it { should allow_mass_assignment_of(:products) }


end
