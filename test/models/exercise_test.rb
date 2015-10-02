require 'test_helper'

class ExerciseTest < ActiveSupport::TestCase

  test "New Exercise Can Be Saved" do
    a = Exercise.create(name: "Jog Around the Park", calories_burned: "350", exercise_type_id: 1, date: Date.today)

    assert a.save
  end


end
