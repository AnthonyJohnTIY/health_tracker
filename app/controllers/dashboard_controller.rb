class DashboardController < ApplicationController
  def home
    @current_weight = Weight.current_weight
    @steps_today = Step.miles_today
    @calories_burned_today = Exercise.calories_today
    @exercise_total_ever = Exercise.total
    @exercise_total_today = Exercise.total_today
  end
end
