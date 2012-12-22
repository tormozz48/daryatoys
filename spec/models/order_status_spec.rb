require 'spec_helper'

describe OrderStatus do

  it { should validate_presence_of(:code) }

  it { should validate_presence_of(:name) }

  it { should have_many(:product_orders) }

  it { should validate_uniqueness_of(:code)}

  it { should ensure_length_of(:name).is_at_least(3)}

  it { should ensure_length_of(:name).is_at_most(255)}

  it { should validate_numericality_of(:code).only_integer}

  it { should allow_mass_assignment_of(:code) }

  it { should allow_mass_assignment_of(:name) }

  it { should allow_mass_assignment_of(:product_orders) }

end
