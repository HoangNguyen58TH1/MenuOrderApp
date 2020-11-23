$LOAD_PATH << '.'
require './spec_helper'

describe MenuItem do
  let(:menu_item) { MenuItem.new({ id: 1, name: 'Bò xào hành', price: 30 }) }
  let(:menu_item1) { MenuItem.new('string something') }

  describe '#print_menu_item' do
    it 'should not return nil' do
      expect(menu_item.print_menu_item).to_not eq nil
    end

    it 'should return 1 strings' do
      expect(menu_item.print_menu_item).to eq 'ID: 1 - Name: Bò xào hành - Price: 30'
    end

    it 'should return error incorrect parameter' do
      expect { menu_item1.print_menu_item }.to raise_error(StandardError)
    end
  end
end
