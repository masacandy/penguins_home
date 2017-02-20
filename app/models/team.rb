class Team < ApplicationRecord
  has_many :users
  has_many :tournaments, through: :team_tournaments

  PENGUINS = 1
end
