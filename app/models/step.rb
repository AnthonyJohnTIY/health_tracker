class Step < ActiveRecord::Base
  def self.daily_total
    today = self.all.select{|s| s.date == Date.today}
    today.reduce(0){|sum, t| sum + t.number_of_steps}
  end

  def self.miles_today
    (self.daily_total / 2112).round(2)
  end
end
