class DashboardsController < ApplicationController
  skip_after_action :verify_authorized
  before_action :set_specialties, only: %i[my_searches my_appointments]

  def my_searches
    # creating instance variable doctors_navbar for if else in application erb file
    @dashboard_navbar = true
    @dashboard = Search.where("user_id == #{current_user.id}")

    # @dashboarda = @dashboard.searches.where(user.id == current_user)
    # current_user
  end

  def my_appointments
    # creating instance variable doctors_navbar for if else in application erb file
    @dashboard_navbar = true
    @dashboard_a = Appointment.where("user_id == #{current_user.id}")
  end

  def my_appointments_destroy
    appointment = Appointment.find(params[:id])
    authorize(appointment)
    appointment.destroy
    redirect_to my_appointments_path
  end
end
