require 'spec_helper'

describe Response do

  fixtures :responses

  before :each do
    @response = responses(:response1)
  end

  it { should validate_presence_of(:email) }

  it { should validate_presence_of(:fio) }

  it { should validate_presence_of(:title) }

  it { should validate_presence_of(:body) }

  it { should ensure_length_of(:email).is_at_most(100)}

  it { should ensure_length_of(:fio).is_at_least(5)}

  it { should ensure_length_of(:fio).is_at_most(100)}

  it { should ensure_length_of(:title).is_at_most(100)}

  it { should ensure_length_of(:body).is_at_most(500)}

  it { should allow_mass_assignment_of(:email) }

  it { should allow_mass_assignment_of(:fio) }

  it { should allow_mass_assignment_of(:title) }

  it { should allow_mass_assignment_of(:body) }

  it { should allow_mass_assignment_of(:humanizer_question_id) }

  it { should allow_mass_assignment_of(:humanizer_answer) }

end
