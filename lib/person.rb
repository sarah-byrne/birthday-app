require 'date'

class Person
  attr_reader :name, :birth_day, :birth_month

  def initialize(name, month, day)
    @name = name
    @birth_day = day
    @birth_month = month
  end

  def birthday?
    birthday = Date.parse("#{birth_day} #{birth_month}")
    return true if birthday.to_s == Date.today.to_s
    false
  end
end
