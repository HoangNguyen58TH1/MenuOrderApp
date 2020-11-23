$LOAD_PATH << '.'
require './spec_helper'

describe Menu do
  MENU_ITEMS_INPUT = [
    MenuItem.new({ id: 1, name: 'Bò xào hành', price: 30 }),
    MenuItem.new({ id: 2, name: 'Ớt xào xả ớt', price: 35 })
  ]
  let(:menu) { Menu.new(MENU_ITEMS_INPUT) }
  let(:menu_error) { 'List Menu' }

  describe '#print_menu' do
    specify 'should return output' do
      expect(menu.print_menu.length).to eq 2
      expect(menu.print_menu[0].name).to eq('Bò xào hành')
      expect(menu.print_menu[1].name).to eq('Ớt xào xả ớt')
    end

    it 'should return 1 type Array' do
      expect(menu.print_menu).to a_kind_of(Array)
    end

    it 'should return error incorrect parameter' do
      expect { menu_error.print_menu }.to raise_error(StandardError)
    end
  end

  describe '@id' do
    it 'should not return nil' do
      expect(menu.id).to_not eq nil
    end
  end

  describe '@name' do
    it 'should not return nil' do
      expect(menu.name).to_not eq nil
    end
  end
end
