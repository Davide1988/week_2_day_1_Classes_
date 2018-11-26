require('minitest/autorun')
require('minitest/rg')
require_relative('../sport_team')

class TestSportTeam < MiniTest::Test

  def test_get_team_name
    team = Team.new("Celtic", ["Bob","Steve","Dave"], "Albert", 0)
    assert_equal("Celtic", team.name)
  end

  def test_get_team_players
    team = Team.new("Celtic", ["Bob","Steve","Dave"], "Albert", 0)
    assert_equal(["Bob","Steve","Dave"],team.players)
  end

  def test_get_team_coach
    team = Team.new("Celtic", ["Bob","Steve","Dave"], "Albert", 0)
    assert_equal("Albert",team.coach)
  end

  def test_update_team_coach
    team = Team.new("Celtic", ["Bob","Steve","Dave"], "Albert", 0)
    team.coach = "Joker"
    assert_equal("Joker", team.coach)
  end

  def test_add_player
    team = Team.new("Celtic", ["Bob","Steve","Dave"], "Albert", 0)
    assert_equal(["Bob","Steve","Dave", "Alice"], team.add_player("Alice"))
  end

  def test_check_for_player
    team = Team.new("Celtic", ["Bob","Steve","Dave"], "Albert", 0)
    assert_equal(true, team.check_for_player("Bob"))
  end

  def test_team_win_or_loose__win
    team = Team.new("Celtic", ["Bob","Steve","Dave"], "Albert", 0)
    assert_equal(3, team.win_or_loose("win"))
  end

  def test_team_win_or_loose__win
    team = Team.new("Celtic", ["Bob","Steve","Dave"], "Albert", 0)
    assert_equal(0, team.win_or_loose("loose"))
  end

end
