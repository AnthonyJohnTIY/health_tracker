class CalorieConsumption < ActiveRecord::Base

  validates :name, presence: true
  validates :date, presence: true
  validates :amount, presence: true


  def self.total_today
    consumption_today = self.all.select{|e| e.date == Date.today}
    consumption_today.count
  end

  def self.consumption_today
    consumption_today = self.all.select{|e| e.date == Date.today}
    consumption_today.reduce(0){|sum, e| sum + e.amount}
  end



end
