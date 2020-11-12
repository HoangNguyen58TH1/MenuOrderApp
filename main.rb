$LOAD_PATH << '.'
require './controller/calculator'
require './models/employee'
require './models/menu'
require './models/menu_item'
require './models/order'
require './controller/order_controller'

arr_order = [
  { id: 1, id_employee: 1, id_menu_item: 2, order_time: Time.local(2020, 11, 3, 9, 15).strftime('%H:%M') },
  { id: 2, id_employee: 2, id_menu_item: 3, order_time: Time.local(2020, 11, 3, 9, 20).strftime('%H:%M') }
]

# print list employee
puts 'LIST EMPLOYEE'
Employee::EMPLOYEE.each do |employee|
  employee.print_employee
end

puts '======================================'
# print list menu
instance_menu = Menu.new(MenuItem::MENU_ITEMS)
instance_menu.print_menu

puts '======================================'
# print list order
instance_arr_order = []
arr_order.each do |hash|
  instance_arr_order << Order.new(hash)
end

order_controller = OrderController.new(instance_arr_order)
order_controller.print_orders
order_controller.price_total

puts '======================================'
order_controller.add_order(Order.new({ id: 3, id_employee: 1, id_menu_item: 3, order_time: Time.local(2020, 11, 3, 9, 31).strftime('%H:%M') }))
order_controller.add_order(Order.new({ id: 4, id_employee: 3, id_menu_item: 3, order_time: Time.local(2020, 11, 3, 9, 25).strftime('%H:%M') }))
order_controller.add_order(Order.new({ id: 5, id_employee: 1, id_menu_item: 3, order_time: Time.local(2020, 11, 3, 9, 32).strftime('%H:%M') }))

puts '======================================'
order_controller.print_orders
order_controller.price_total

puts '======================================'
order_controller.cancel_order(1)
order_controller.print_orders
order_controller.price_total

puts '======================================'
order_controller.change_order(4, 2, Time.local(2020, 11, 3, 9, 29).strftime('%H:%M'))
order_controller.print_orders
order_controller.price_total

# puts 'abc'
# cal = Calculator.new(2, 3)
# puts cal.sum
# puts cal.square
