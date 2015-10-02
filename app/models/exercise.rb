class Exercise < ActiveRecord::Base
  belongs_to :exercise_type

  validates :exercise_type_id, presence: true
  validates :name, presence: true
  validates :date, presence: true
  validates :calories_burned, presence: true




end
