class NotificationsController < ApplicationController
  def show
    @notification = Notification.find(params[:id])
    authorize(@notification)
  end

  def update
    @notification = Notification.find(params[:id])
    authorize(@notification)
    @appointment = @notification.appointment
    @appointment.update(notification_params)

    if @appointment.status == "confirmed"
      @appointment.update(user: current_user)
      # redirect_to my_appointments
    else
      current_user.searches.where(specialty: @appointment.doctor.specialties).destroy_all
      # redirect to appointments#show
    end
  end

  private

  def notification_params
    params.require(:notification).permit(:status)
  end
end
