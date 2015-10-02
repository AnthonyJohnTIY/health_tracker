class DashboardController < ApplicationController
  def home
    @current_weight = Weight.current_weight
    @steps_today = Step.miles_today
  end
end
