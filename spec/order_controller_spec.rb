$LOAD_PATH << '.'
require './spec_helper'

describe OrderController do
  before(:all) do
    arr_order = [
      { id: 1, id_employee: 1, id_menu_item: 2, order_time: Time.local(2020, 11, 3, 9, 15).strftime('%H:%M') },
      { id: 2, id_employee: 2, id_menu_item: 3, order_time: Time.local(2020, 11, 3, 9, 20).strftime('%H:%M') }
    ]
    instance_arr_order = []
    arr_order.each do |hash|
      instance_arr_order << Order.new(hash)
    end

    @order_controller = OrderController.new(instance_arr_order)
  end

  it 'when price_total method run then return String contain price total of list order' do
    expect(@order_controller.price_total).to eq 'Price total today: 65 VND'
  end

  
end
