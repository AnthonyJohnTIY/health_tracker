class DashboardController < ApplicationController
  def home

    @current_weight = Weight.current_weight
    @steps_today = Step.miles_today
    @calories_burned_today = Exercise.calories_today
    @exercise_total_ever = Exercise.total
    @exercise_total_today = Exercise.total_today
    @calories_consumed_today = CalorieConsumption.consumption_today
    @average_calories_burned = Exercise.average_calories_burned
    @average_caloric_intake = CalorieConsumption.average_caloric_intake

  end
end
