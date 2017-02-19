class Tournament < ApplicationRecord
  has_many :teams, through: :team_tournaments
  has_many :games
end
