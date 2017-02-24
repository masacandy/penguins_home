require "administrate/field/base"

class TeamTournamentField < Administrate::Field::Base
  def name
    data.name
  end

  def select_field_values
    tournaments = options.fetch(:tournaments)
    tournaments.each_with_object({}) do |tournament, hash|
      hash[tournament.name.to_sym] = tournament.id
    end
  end
end
