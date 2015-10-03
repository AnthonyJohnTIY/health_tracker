class Step < ActiveRecord::Base
  extend DailySelection

  def self.daily_total
    daily_items.reduce(0){|sum, t| sum + t.number_of_steps}
  end

  def self.miles_today
    (self.daily_total.to_f / 2112).round(2)
  end
end
