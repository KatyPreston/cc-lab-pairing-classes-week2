require("minitest/autorun")
require("minitest/rg")
require_relative("../team_class")

class TestTeam < MiniTest::Test

  def test_team_name
    team = Team.new("Tigers", ["Katy", "Laura", "Rachel", "Tom"], "Carter")
    assert_equal("Tigers", team.name())
  end

  def test_players
    team = Team.new("Tigers", ["Katy", "Laura", "Rachel", "Tom"], "Carter")
    assert_equal(["Katy", "Laura", "Rachel", "Tom"], team.players())
  end

  def test_coach
    team = Team.new("Tigers", ["Katy", "Laura", "Rachel", "Tom"], "Carter")
    assert_equal("Carter", team.coach())
  end

  def test_set_coach_name
    team = Team.new("Tigers", ["Katy", "Laura", "Rachel", "Tom"], "Carter")
    team.coach_name = "Jackson"
    assert_equal("Jackson", team.coach())
  end

end
