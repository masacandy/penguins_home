class Team < ApplicationRecord
  has_many :users
  has_many :tournaments, through: :team_tournaments
end
