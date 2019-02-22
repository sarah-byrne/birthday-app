require 'date'

class Person
  attr_reader :name, :birth_day, :birth_month

  def initialize(name, month, day)
    @name = name
    @birth_day = day
    @birth_month = month
    @birthday = Date.parse("#{day} #{month}")
  end

  def birthday?
    return true if @birthday.to_s == Date.today.to_s
    false
  end

  def days_until_bday
    days = Date.today < @birthday ?
      @birthday - Date.today : @birthday.next_year - Date.today
    days.to_i  
  end
end
