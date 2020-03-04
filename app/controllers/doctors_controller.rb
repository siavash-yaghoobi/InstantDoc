class DoctorsController < ApplicationController
  before_action :set_specialties, only: :index
  def index
    if params[:specialties].present? # We check if the user gave as a specitly
      @doctors = Doctor.joins(:specialties).where({ specialties: { name: params[:specialties] } })
      @doctors = @doctors.geocoded # We search for a doctor with this specialty
    else
      @doctors = Doctor.geocoded
    end
    # @addresses = Doctor.where("address = #{params[:address]}")


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
