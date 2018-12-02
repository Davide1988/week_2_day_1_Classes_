class Team

  attr_accessor :name, :players, :coach
  attr_reader :points

  def initialize(name, players, coach)
    @name = name
    @players = players
    @coach = coach
    @points = 0
  end

  def add_player(player_name)
    players.push(player_name)
  end

  def check_for_player(player_name)
  players.include?(player_name)
  end


def win_or_loose(result)
  if result 
    @points += 3
  end
end


end
