require 'spec_helper'

describe Category do

  fixtures :categories

  before :each do
    @category = categories(:category1)
  end

  it { should validate_presence_of(:name) }

  it { should validate_presence_of(:enabled) }

  it { should belong_to(:category) }

  it { should have_many(:categories) }

  it { should have_many(:products) }

  it { should validate_uniqueness_of(:name) }

  it { should ensure_length_of(:name).is_at_least(3) }

  it { should ensure_length_of(:name).is_at_most(255) }

  #it { should ensure_inclusion_of(:enabled).in_array(['true', 'false'])}

  it { should allow_mass_assignment_of(:name) }

  it { should allow_mass_assignment_of(:enabled) }

  it { should allow_mass_assignment_of(:category) }

  it { should allow_mass_assignment_of(:category_id) }

  it { should allow_mass_assignment_of(:categories) }
end
