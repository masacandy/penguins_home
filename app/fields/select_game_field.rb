require "administrate/field/base"

class SelectGameField < Administrate::Field::Base
  def to_s
    data
  end

  def select_games
    options.fetch(:games).map do |game|
      name = "vs #{game.opponent}"
      [name, game.id]
    end
  end
end
