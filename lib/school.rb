require 'pry'
class School
  def initialize(name)
    @name = name
    @roster = {}
  end

  attr_reader :name, :roster

  # def roster
  #   {}
  # end

  def add_student(name,grade)
    if @roster.keys.include?(grade)
      @roster[grade]<<name
    else
      @roster[grade] = []
      @roster[grade]<<name
    end
  end

  def grade(number)
    @roster[number]
  end

  def sort
    @roster.each_value { |name| name.sort! }
  end

end
