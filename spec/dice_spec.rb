require 'dice'

describe 'dice' do
  dice = Dice.new

  context "roll method" do
    it 'returns an integer' do
      expect(dice.roll).to be_a(Integer)
    end
  end
end
