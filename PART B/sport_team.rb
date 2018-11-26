class Team

  attr_accessor :name, :players, :coach, :points

  def initialize(name, players, coach, points)
    @name = name
    @players = players
    @coach = coach
    @points = points
  end

  def add_player(player_name)
    players.push(player_name)
  end

  def check_for_player(player_name)
  players.include?(player_name)
  end


def win_or_loose(result)
  if result == "win"
    @points += 3
  else
    return @points
  end
end


end
