class User < ApplicationRecord
  has_many :stats

  belongs_to :team

  def to_s
    'test'
  end
end
