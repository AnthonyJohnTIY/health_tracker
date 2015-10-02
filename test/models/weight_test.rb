require 'test_helper'

class WeightTest < ActiveSupport::TestCase
  test "get_current_weight" do
    most_recent_weight = Weight.current_weight
    assert_equal 150, most_recent_weight
  end
end
