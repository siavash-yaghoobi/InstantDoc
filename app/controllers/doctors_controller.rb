class DoctorsController < ApplicationController
  before_action :set_specialties, only: :index
  skip_before_action :authenticate_user!, only: %i[index]

  def index
    if params[:specialties].present? # We check if the user gave as a specitly
      @doctors = policy_scope(Doctor.geocoded.near(params[:location], params[:radius][:radius]).joins(:specialties).where({ specialties: { id: params[:specialties].to_i } })) # We search for a doctor with this specialty
      @search = Search.new
    else
      @doctors = Doctor.geocoded
    end
    @markers = @doctors.map do |doctor|
      {
        lat: doctor.latitude,
        lng: doctor.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { doctor: doctor })
      }
    end
  end

    private

    def search_params
      params.require(:doctor).permit(:specialty, :location)
    end
  end
