class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :find_team

  private

	def find_team
		# current_userを取得するまで
		@team ||= Team.find(Team::PENGUINS)
	end
end
