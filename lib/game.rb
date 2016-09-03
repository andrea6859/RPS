class Game

  attr_reader :name, :player_weapon, :computer_weapon

def initialize(options)
  @name = options["name"]
  @player_weapon = options["player_weapon"]
  @computer_weapon = options["computer_weapon"]
end

end
