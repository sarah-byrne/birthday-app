class Person
  attr_reader :name, :birth_day, :birth_month 

  def initialize(name, month, day)
    @name = name
    @birth_day = day
    @birth_month = month
  end
end
