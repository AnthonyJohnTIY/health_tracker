class DashboardController < ApplicationController
  def home
    @current_weight = Weight.current_weight
  end
end
