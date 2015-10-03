class Exercise < ActiveRecord::Base
  extend DailySelection

  belongs_to :exercise_type

  validates :exercise_type_id, presence: true
  validates :name, presence: true
  validates :date, presence: true
  validates :calories_burned, presence: true

  def self.total
    self.count
  end

  def self.total_today
    daily_items.count
  end

  def self.calories_today
    daily_items.reduce(0){|sum, e| sum + e.calories_burned}
  end

  def self.average_calories_burned
    if self.count == 0
      "No Exercises Entered"
    else
      all.reduce(0){|sum, e| sum + e.calories_burned}/total.to_f
    end
  end



end
