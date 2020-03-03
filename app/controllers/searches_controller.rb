class SearchesController < ApplicationController

  def home
  end

  def show
    @search = Search.new
    # @specialty = Specialty.new
    @specialties = Specialty.all
  end

end
