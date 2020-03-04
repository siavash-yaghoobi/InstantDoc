class SearchesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :index, :show]

  def index
    @searches = Search.all
  end

  def show
    @search = Search.new
    @specialty = Specialty.new
    @specialties = Specialty.all
  end

end
