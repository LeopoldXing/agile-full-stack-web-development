class Year
  def self.leap?(year)
    # if the year can be divided by 400
    if year % 400 == 0
      return true
    end

    # if the year can be divided by 100
    if year % 100 == 0
      return false
    end

    # if the year can be divided by 4
    year % 4 == 0
  end
end