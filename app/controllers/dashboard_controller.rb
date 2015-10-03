class DashboardController < ApplicationController
  def home
    @total = Exercise.total
    @calories_today = Exercise.calories_today
    @total_today = Exercise.total_today
    @calories_consumed_today = CalorieConsumption.consumption_today
    @number_eaten_today = CalorieConsumption.total_today
  end
end
