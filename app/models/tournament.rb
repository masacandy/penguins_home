class Tournament < ApplicationRecord
  has_many :team_tournaments
  has_many :teams, through: :team_tournaments
  has_many :games

  enum game_type: { tournament: 0, league: 1 }

  after_create :create_team_tournament

  private

  def create_team_tournament
    TeamTournament.create!(tournament_id: id, team_id: Team::PENGUINS)
  end
end
