class SpecialtiesController < ApplicationController
  def index

    @doctors = Doctor.all
  end

  private

  def search_params
    params.require(:doctor).permit(:specialty, :location)
  end

end
