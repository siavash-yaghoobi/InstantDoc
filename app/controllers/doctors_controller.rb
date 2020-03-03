class DoctorsController < ApplicationController
  def index
    if params[:specialties].present? # We check if the user gave as  a specitly
      @doctors = Doctor.joins(:specialties).where({ specialties: { name: params[:specialties] } }) # We search for a doctor with this specialty
    else
      @doctors = Doctor.all
    end

    @addresses = Doctor.where("address = #{params[:address]}")
  end

    private

    def search_params
      params.require(:doctor).permit(:specialty, :location)
    end
  end
