class Employee
  attr_accessor :id, :name
  def initialize(hash_employee)
    @id = hash_employee[:id]
    @name = hash_employee[:name]
  end

  EMPLOYEE = [
    Employee.new({ id: 1, name: 'Hoang' }),
    Employee.new({ id: 2, name: 'Linh' }),
    Employee.new({ id: 3, name: 'Thiên' })
  ]

  def print_employee
    "ID: #{id} - Name: #{name}"
  end
end
