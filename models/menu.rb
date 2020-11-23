class Menu
  attr_accessor :id, :arr_menu_items, :name
  def initialize(arr_menu_items)
    @id = rand(1..10)
    @arr_menu_items = arr_menu_items
    @name = 'LIST MENU'
  end

  def print_menu
    arr_menu_items.each { |item| item.print_menu_item }
  end
end
