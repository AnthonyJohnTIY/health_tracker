module DailySelection

  def daily_items
    self.all.select{|i| i.date == Date.today}
  end



end
