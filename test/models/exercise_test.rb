require 'test_helper'

class ExerciseTest < ActiveSupport::TestCase

  test "New Exercise Can Be Saved" do
    a = Exercise.create(name: "Jog Around the Park", calories_burned: "350", exercise_type_id: 1, date: Date.today)

    assert a.save
  end

  test "Calories Today Method" do
    assert_equal 250, Exercise.calories_today
  end

  test "total method" do
    assert_equal 4, Exercise.total
  end

  test "total today method" do
  assert_equal 2, Exercise.total_today
  end

  

end
