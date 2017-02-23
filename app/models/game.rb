class Game < ApplicationRecord
  has_many :stats

  belongs_to :tournament
  belongs_to :teams

  def finished?
    held_at < Time.zone.now
  end
end
