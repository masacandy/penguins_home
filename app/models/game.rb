class Game < ApplicationRecord
  has_many :stats
  has_many :game_videos

  belongs_to :tournament
  belongs_to :team

  scope :finished, -> { where('held_at < ?', Time.zone.now) }
  scope :latest, -> (number) { order(held_at: :desc).limit(number) }

  def finished?
    held_at < Time.zone.now
  end

  def result
    team_score > opponent_score ? 'win' : 'lose'
  end
end
