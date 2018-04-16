require("minitest/autorun")
require("minitest/rg")
require_relative("../team_class")

class TestTeam < MiniTest::Test

  def test_team_name
    team = Team.new("Tigers", ["Katy", "Laura", "Rachel", "Tom"], "Carter", 0)
    assert_equal("Tigers", team.name())
  end

  def test_players
    team = Team.new("Tigers", ["Katy", "Laura", "Rachel", "Tom"], "Carter", 0)
    assert_equal(["Katy", "Laura", "Rachel", "Tom"], team.players())
  end

  def test_coach
    team = Team.new("Tigers", ["Katy", "Laura", "Rachel", "Tom"], "Carter", 0)
    assert_equal("Carter", team.coach())
  end

  def test_set_coach_name
    team = Team.new("Tigers", ["Katy", "Laura", "Rachel", "Tom"], "Carter", 0)
    team.coach = "Jackson"
    assert_equal("Jackson", team.coach())
  end

  def test_add_player
    team = Team.new("Tigers", ["Katy", "Laura", "Rachel", "Tom"], "Carter", 0)
    team.add_player("Anita")
    assert_equal(["Katy", "Laura", "Rachel", "Tom", "Anita"], team.players())
  end

  def test_player_in_team
    team = Team.new("Tigers", ["Katy", "Laura", "Rachel", "Tom"], "Carter", 0)
    team.in_team("Laura")
    assert_equal("Laura", team.in_team("Laura"))
  end

  def test_win_or_lose
    team = Team.new("Tigers", ["Katy", "Laura", "Rachel", "Tom"], "Carter", 0)
    team.outcome("win")
    assert_equal(10, team.outcome("win"))
  end

end
