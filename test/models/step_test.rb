require 'test_helper'

class StepTest < ActiveSupport::TestCase
  test "get daily step total" do
    assert_equal 4224, Step.daily_total
  end

  test "miles stepped today" do
    assert_equal 2, Step.miles_today
  end
end
