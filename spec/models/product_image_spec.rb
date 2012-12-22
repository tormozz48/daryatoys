require 'spec_helper'

describe ProductImage do

  it { should validate_presence_of(:image) }

  it { should validate_presence_of(:product_id) }

  it { should belong_to(:product) }

  it { should allow_mass_assignment_of(:image) }

  it { should allow_mass_assignment_of(:product) }

  it { should allow_mass_assignment_of(:product_id) }
end
