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
    # all_exercises = Exercise.all
    # all_exercises.reduce(0){|sum, e| sum + e.calories_burned}/Exercise.count
    #
    all.reduce(0){|sum, e| sum + e.amount}/total.to_f.round(2)
  end




end
