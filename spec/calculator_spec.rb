require './controller/calculator'

describe 'Calculator' do
  subject { Calculator.new(a: a, b: b) }

  describe 'addition' do
    let(:a) { 2 }
    let(:b) { 3 }

    context 'true' do
      specify { expect(subject.addition).to eq 5 }
    end

    context 'false' do
      let(:b) { 6 }

      specify { expect(subject.addition).to eq 8 }
    end
  end

  describe 'multiplication' do
    let(:a) { 2 }
    let(:b) { 3 }

    context 'true' do
      specify { expect(subject.multiplication).to eq 6 }
    end

    context 'false' do
      let(:b) { 4 }
      specify { expect(subject.multiplication).to eq 8 }
    end

  end
end
