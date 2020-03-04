class DashboardsController < ApplicationController
  def index
    @dashboard = Search.where("user_id == #{current_user.id}")
    # @dashboarda = @dashboard.searches.where(user.id == current_user)
    # current_user
    # @bookings = policy_scope(Booking)
  end
end
