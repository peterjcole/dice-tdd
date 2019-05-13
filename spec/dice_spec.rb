require 'dice'

describe 'dice' do
  dice = Dice.new

  context "roll method" do
    it 'returns an integer' do
      expect(dice.roll).to be_a(Integer)
    end

    it 'returns an integer less than or equal to six' do
      expect(dice.roll).to be <= 7
    end

    it 'returns an integer greater than or equal to 1' do
      expect(dice.roll).to be >= 1
    end

    it 'returns a different integer when rolled twice' do
      expect(dice.roll).not_to eq (dice.roll)
    end

  end
end
