class Employee
  attr_reader :name, :age, :salary

  def initialize(person)
    @name = person[:name]
    @age = person[:age].to_i
    @salary = person[:salary].to_i
  end
  
end