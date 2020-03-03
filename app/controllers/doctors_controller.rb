class DoctorsController < ApplicationController
  def index
    @doctors = Doctor.all
    @doctors = Doctor.joins(:specialties).where({ specialties: { name: params[:specialties] } }) if params[:specialties].present?
    @addresses = Doctor.where("address = #{params[:address]}")
  end

  private

  def search_params
    params.require(:doctor).permit(:specialty, :location)
  end

end
