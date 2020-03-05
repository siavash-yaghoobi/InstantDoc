class DashboardsController < ApplicationController
  def my_searches
    @dashboard = Search.where("user_id == #{current_user.id}")
    # @dashboarda = @dashboard.searches.where(user.id == current_user)
    # current_user

  end


end
