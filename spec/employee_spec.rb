$LOAD_PATH << '.'
require './spec_helper'

describe Employee do
  let(:employee) { Employee.new({ id: 1, name: 'Hoang' }) }
  let(:employee_1) { Employee.new('hello') }

  describe '#print_employee' do
    it 'should return 1 strings' do
      expect(employee.print_employee).to eq 'ID: 1 - Name: Hoang'
    end

    it 'should not return nil' do
      expect(employee.print_employee).to_not eq nil
    end

    it 'should return error incorrect parameters' do
      expect { employee_1.print_employee }.to raise_error(StandardError)
    end
  end
end
