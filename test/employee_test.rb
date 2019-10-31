require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/employee.rb'

class EmployeeTest < Minitest::Test 

  def setup
    @employee = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"})
  end

  def test_it_exist
    assert_instance_of Employee, @employee
  end

  def test_it_has_a_name
    assert_equal "Bobbi Jaeger", @employee.name
  end

  def test_it_has_an_age
    assert_equal 30, @employee.age
  end

  def test_it_has_a_salary
    assert_equal 100000, @employee.salary
  end

end