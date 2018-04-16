class Team

  attr_accessor(:name, :players, :coach)

  def initialize(name, players, coach, points)
    @name = name
    @players = players
    @coach = coach
    @points = 0
  end


  # def get_name
  #   return @name
  # end
  #
  # def get_players
  #   return @players
  # end
  #
  # def get_coach
  #   return @coach
  # end
  #
  # def set_coach_name(new_name)
  #   return @coach = new_name
  # end

  def add_player(new_player)
    return @players.push(new_player)
  end

  def in_team(name)
    player = []
    for player in @players
      return player if player == name
    end
  end


  def outcome(win_or_lose)
    @points = 0
    if win_or_lose == "win"
      @points += 10
    elsif win_or_lose == "lose"
      @points -= 5
    end
  end

end
