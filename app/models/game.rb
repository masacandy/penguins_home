class Game < ApplicationRecord
  has_many :stats

  belongs_to :tournament
end
