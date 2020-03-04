class DoctorsController < ApplicationController
  before_action :set_specialties, only: :index
  def index
    if params[:specialties].present? # We check if the user gave as a specitly
      @doctors = Doctor.joins(:specialties).where({ specialties: { name: params[:specialties] } }) # We search for a doctor with this specialty
      @search = Search.new
    else
      @doctors = Doctor.all
    end
    @addresses = Doctor.where("address = #{params[:address]}")
    @doctors = Doctor.geocoded
    @markers = @doctors.map do |doctor|
      {
        lat: doctor.latitude,
        lng: doctor.longitude
      }
    end
  end

    private

    def search_params
      params.require(:doctor).permit(:specialty, :location)
    end
  end
