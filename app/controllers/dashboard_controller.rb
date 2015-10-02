class DashboardController < ApplicationController
  def home
    @total = Exercise.total
    @calories_today = Exercise.calories_today
  end
end
