class Tournament < ApplicationRecord
  has_many :team_tournaments
  has_many :teams, through: :team_tournaments
  has_many :games

  enum game_type: { tournament: 0, league: 1 }
end
