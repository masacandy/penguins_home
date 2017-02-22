class Game < ApplicationRecord
  has_many :stats

  belongs_to :tournament

  def finished?
    held_at < Time.zone.now
  end
end
