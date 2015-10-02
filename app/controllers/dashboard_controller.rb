class DashboardController < ApplicationController
  def home
    @total = Exercise.total
    @calories_today = Exercise.calories_today
    @total_today = Exercise.total_today
  end
end
