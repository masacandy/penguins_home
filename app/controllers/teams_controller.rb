class TeamsController < ApplicationController
	before_action :find_team, only: %i(index)

  def index
  end

	private

	def find_team
		# current_userを取得するまで
		@team ||= Team.find(Team::PENGUINS)
	end
end
