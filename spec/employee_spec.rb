$LOAD_PATH << '.'
require './spec_helper'

describe Employee do
  before(:each) do
    @employee = Employee.new({ id: 1, name: 'Hoang' })
  end

  context 'when print_employee method run' do
    it 'should return 1 strings' do
      expect(@employee.print_employee).to eq 'ID: 1 - Name: Hoang'
    end

    it 'should not return nil' do
      expect(@employee.print_employee).to_not eq nil
    end
  end
end
