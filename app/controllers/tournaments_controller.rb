class TournamentsController < ApplicationController
  def index
    @tournaments = Team.find(Team::PENGUINS).tournaments.order(season_start: :desc)
  end

  def show
    @tournament = Tournament.find(params[:id])
  end
end
