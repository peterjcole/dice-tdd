# As a board game player,
# So that I can play a game
# I want to be able to roll a dice

# As a board game player,
# So that I know how many steps I should move
# Rolling a dice should give me a number between 1 and 6

# As a dice app developper,
# So that I give players a good game experience
# I want the dice roll to be randomly picked

# As a board game player,
# So that I can play many types of games
# I want to be able to roll any number of dice at the same time

# As a board game player,
# So that I know what my score was when I rolled several dice
# I want to get the result of each dice roll

class Dice
  def roll(num_dice = 1)
    return single_roll if num_dice == 1
    dice = []
    num_dice.times { dice.push(single_roll) }
    return dice
  end

  def single_roll
    return rand(1..6)
  end

  def roll_sum(num_dice = 1)
    return num_dice * single_roll
  end

end
