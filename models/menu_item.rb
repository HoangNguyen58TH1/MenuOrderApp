class MenuItem
  attr_accessor :id, :name, :price
  def initialize(hash_menu_item)
    @id = hash_menu_item[:id]
    @name = hash_menu_item[:name]
    @price = hash_menu_item[:price]
  end

  MENU_ITEMS = [
    MenuItem.new({ id: 1, name: 'Bò xào hành', price: 30 }),
    MenuItem.new({ id: 2, name: 'Cá hố chiên', price: 30 }),
    MenuItem.new({ id: 3, name: 'Ớt xào xả ớt', price: 35 })
  ]

  def print_menu_item
    "ID: #{id} - Name: #{name} - Price: #{price}"
  end
end
