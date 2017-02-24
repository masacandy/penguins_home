class User < ApplicationRecord
  has_many :stats

  belongs_to :team

  before_create :set_team

  private

  def set_team
    self.team_id = Team::PENGUINS
  end
end
