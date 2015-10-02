class DashboardController < ApplicationController
  def home
    @total = Exercise.total
    
  end
end
