class Weight < ActiveRecord::Base
  validates :date, uniqueness: true

  def self.current_weight
    if self.count == 0
      "No Weights Entered"
    else
      self.all.sort {|a, b| a.date <=> b.date}.last.weight
    end
  end
end
