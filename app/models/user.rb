class User < ApplicationRecord
  has_many :stats

  belongs_to :teams
end
