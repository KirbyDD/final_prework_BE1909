require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/employee.rb'
require_relative '../lib/department.rb'

class DepartmentTest < Minitest::Test 

  def setup
    @department = Department.new("Customer Service")
  end

  def test_it_exist
    assert_instance_of Department, @department
  end

  def test_it_has_a_name
    assert_equal "Customer Service", @department.name
  end

  def test_it_has_no_employees_by_default
    assert_equal [], @department.employees
  end

  def test_has_no_expenses_by_default
    assert_equal 0, @department.expenses
  end

  def test_hire_method
    bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"})
    aaron = Employee.new({name: "Aaron Tanaka", age: "25", salary: "90000"})
    @department.hire(bobbi)
    assert_equal [bobbi], @department.employees
    @department.hire(aaron)
    assert_equal [bobbi, aaron], @department.employees
  end

  def test_expense_method
    @department.expense(100)
    assert_equal 100, @department.expenses
    @department.expense(25)
    assert_equal 125, @department.expenses
  end

end