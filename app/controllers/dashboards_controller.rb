class DashboardsController < ApplicationController
  before_action :set_specialties, only: %i[my_searches my_appointments]

  def my_searches
    @dashboard = Search.where("user_id == #{current_user.id}")
    # @dashboarda = @dashboard.searches.where(user.id == current_user)
    # current_user

  end

  def my_appointments
    @dashboard_a = Appointment.where("user_id == #{current_user.id}")
  end


end
