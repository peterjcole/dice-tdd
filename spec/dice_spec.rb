require 'dice'

describe 'dice' do
  context "roll method - rolling a single dice" do
    before(:each) do
      @dice = Dice.new
    end
    it 'returns an integer' do
      expect(@dice.roll).to be_a(Integer)
    end

    it 'returns an integer less than or equal to six' do
      expect(@dice.roll).to be <= 7
    end

    it 'returns an integer greater than or equal to 1' do
      expect(@dice.roll).to be >= 1
    end

  end

  context 'roll method - rolling multiple dice' do
    before(:each) do 
      @dice = Dice.new
      @num_dice = rand(2..1000)
    end

    it 'returns an array when rolling more than one dice' do
      expect(@dice.roll(@num_dice)).to be_a(Array)
    end

  end

end
