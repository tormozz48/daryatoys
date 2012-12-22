require 'spec_helper'

describe Contact do

  it { should validate_presence_of(:email) }

  it { should validate_presence_of(:phone1) }

  it { should ensure_length_of(:email).is_at_least(5) }

  it { should ensure_length_of(:email).is_at_most(100) }

  it { should ensure_length_of(:phone1).is_at_most(20) }

  it { should ensure_length_of(:phone2).is_at_most(20) }

  it { should ensure_length_of(:area).is_at_most(200) }

  it { should ensure_length_of(:skype).is_at_most(50) }

  it { should allow_mass_assignment_of(:email) }

  it { should allow_mass_assignment_of(:phone1) }

  it { should allow_mass_assignment_of(:phone2) }

  it { should allow_mass_assignment_of(:area) }

  it { should allow_mass_assignment_of(:skype) }

end
