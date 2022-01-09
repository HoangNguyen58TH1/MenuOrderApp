class OrderController
  attr_accessor :orders, :time
  def initialize(orders)
    @orders = orders
    @time = Time.local(2020, 11, 3, 9, 30).strftime('%H:%M')
  end

  def print_orders
    puts 'LIST ORDER'
    orders.each do |order|
      puts order.print_order
    end
  end

  def price_total
    price_total = 0
    orders.each do |order|
      item_order = MenuItem::MENU_ITEMS.find do |item|
        item.id == order.id_menu_item
      end
      price_total += item_order.price
    end
    "Price total today: #{price_total} VND"
  end

  def add_order(order)
    if time < order.order_time
      puts "ORDER FAILED - #{order.print_order}"
      return
    end
    orders << order
  end

  def cancel_order(id_order)
    orders.reject! { |order| order.id == id_order }
  end

  def change_order(id_order, id_menu_item_change, order_time_change)
    order_change = orders.find { |order| order.id == id_order }
    order_change.id_menu_item = id_menu_item_change if order_time_change < time
  end
end

# 
aaa
bbb