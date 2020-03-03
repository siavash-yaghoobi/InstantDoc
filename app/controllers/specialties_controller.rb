class SpecialtiesController < ApplicationController
  def index
    @doctors = Doctor.all
  end

end
