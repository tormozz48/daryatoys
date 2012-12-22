require 'test_helper'

class CategoryTest < ActiveSupport::TestCase

  fixtures :categories

  def setup
    @category = categories(:category1)
  end

  test "should have name" do
    assert @category.valid?
    @category.name = nil
    assert !@category.valid?
  end

  # test "the truth" do
  #   assert true
  # end
end
