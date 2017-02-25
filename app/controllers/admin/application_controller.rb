# All Administrate controllers inherit from this `Admin::ApplicationController`,
# making it the ideal place to put authentication logic or other
# before_actions.
#
# If you want to add pagination or other controller-level concerns,
# you're free to overwrite the RESTful controller actions.
module Admin
  class ApplicationController < Administrate::ApplicationController
    before_action :authenticate_admin, if: :production?

    def authenticate_admin
      authenticate_or_request_with_http_basic do |user,pass|
        user == ENV["BASIC_AUTH_USER"] && pass == ENV["BASIC_AUTH_PASSWORD"]
      end
    end

    def render_404
      render file: Rails.root.join('public/404.html'), status: 404, layout: false, content_type: 'text/html'
    end

    # Override this value to specify the number of elements to display at a time
    # on index pages. Defaults to 20.
    # def records_per_page
    #   params[:per_page] || 20
    # end

    private

    def production?
      Rails.env.production?
    end
  end
end
