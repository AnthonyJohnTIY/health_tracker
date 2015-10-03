class Exercise < ActiveRecord::Base
  belongs_to :exercise_type

  validates :exercise_type_id, presence: true
  validates :name, presence: true
  validates :date, presence: true
  validates :calories_burned, presence: true


  def self.total
    self.count
  end

  def self.total_today
    exercises_today = self.all.select{|e| e.date == Date.today}
    exercises_today.count
  end

  def self.calories_today
    exercises_today = self.all.select{|e| e.date == Date.today}
    exercises_today.reduce(0){|sum, e| sum + e.calories_burned}
  end



end
