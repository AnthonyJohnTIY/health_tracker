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

  test "Net Caloric Intake" do
    net_intake = CalorieConsumption.consumption_today - Exercise.calories_today
    assert_equal 100, net_intake
  end

  test "get caloric intake average" do
    assert_equal 150, CalorieConsumption.average_caloric_intake
  end



end
