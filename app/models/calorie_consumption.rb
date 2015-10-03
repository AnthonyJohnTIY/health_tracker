class CalorieConsumption < ActiveRecord::Base
  extend DailySelection

  validates :name, presence: true
  validates :date, presence: true
  validates :amount, presence: true

  def self.total
    self.count
  end

  def self.total_today
    daily_items.count
  end

  def self.consumption_today
    daily_items.reduce(0){|sum, e| sum + e.amount}
  end

  def self.average_caloric_intake
    all.reduce(0){|sum, e| sum + e.amount}/total.to_f
  end




end
