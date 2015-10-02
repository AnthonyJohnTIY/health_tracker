class DashboardController < ApplicationController
  def home
    @steps_today = Step.miles_today
  end
end
