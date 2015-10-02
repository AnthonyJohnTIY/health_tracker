class Weight < ActiveRecord::Base
  validates :date, uniqueness: true

  def self.current_weight
    self.all.sort {|a, b| a.date <=> b.date}.last.weight
  end
end
