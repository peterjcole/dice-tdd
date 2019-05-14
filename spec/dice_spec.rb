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

    it 'returns the number of dice requested' do
      expect(@dice.roll(@num_dice)).to satisfy { |value| value.length == @num_dice }
    end

    it 'returns an array of only integers' do
      expect(@dice.roll(@num_dice)).to satisfy { |result| result.all? { |dice| dice.is_a? Integer } }
    end

    it 'returns an array containing only integers between one and six' do
      expect(@dice.roll(@num_dice)).to satisfy { |result| result.all? { |dice| dice >= 1 && dice <= 6 } }
    end
  end

  context 'getting the sum of a number of dice rolls' do
    before(:each) do
      @dice = Dice.new
      @num_dice = rand(2..1000)
    end

    it 'returns an integer when rolling one dice' do
      expect(@dice.roll_sum).to be_a(Integer)
    end

    it 'returns an integer when rolling multiple dice' do
      expect(@dice.roll_sum(@num_dice)).to be_a(Integer)
    end

    it 'returns an integer between expected values based on number of rolls' do
      min_value = @num_dice
      max_value = @num_dice * 6
      result = @dice.roll_sum(@num_dice)
      expect(result).to be >= min_value
      expect(result).to be <= max_value
    end

  end
end
