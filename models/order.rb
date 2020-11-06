class Order
  attr_accessor :id, :id_employee, :id_menu_item, :order_time
  def initialize(hash_order)
    @id = hash_order[:id]
    @id_employee = hash_order[:id_employee]
    @id_menu_item = hash_order[:id_menu_item]
    @order_time = hash_order[:order_time]
  end

  def print_order
    employee_order = Employee::EMPLOYEE.find { |employee| employee.id == id_employee }
    item_order = MenuItem::MENU_ITEMS.find { |item| item.id == id_menu_item }
    "ID: #{id} - Employee: #{employee_order.name} - Order: #{item_order.name} - Price: #{item_order.price} - Time order: #{order_time}"
  end
end
