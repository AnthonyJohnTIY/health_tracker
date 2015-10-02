require 'test_helper'

class StepTest < ActiveSupport::TestCase
  test "get daily step total" do
    assert_equal 5491, Step.daily_total
  end

  test "miles stepped today" do
    assert_equal 2.60, Step.miles_today
  end
end
