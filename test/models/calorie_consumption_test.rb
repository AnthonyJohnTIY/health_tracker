require 'test_helper'

class CalorieConsumptionTest < ActiveSupport::TestCase


  test "New Calorie Consumption Can Be Saved" do
    a = CalorieConsumption.create(name: "Cheeseburge", amount: "250", date: Date.today)

    assert a.save
  end

  test "Consumption Today Method" do
    assert_equal 350, CalorieConsumption.consumption_today
  end

  test "total today method" do
  assert_equal 2, CalorieConsumption.total_today
  end


end
