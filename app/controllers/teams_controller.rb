class TeamsController < ApplicationController
  def index
    #current_userを取得するまではペンギンズが必ずトップページに来るようにする
    @team = Team.find(Team::PENGUINS)
  end
end
