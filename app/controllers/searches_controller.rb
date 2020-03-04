class SearchesController < ApplicationController
  #before_action :set_specialties, only:
  skip_before_action :authenticate_user!, only: [:home, :index, :show]

  def index

  end

  def create
    search = Search.new(search_params)
    search.specialty = Specialty.find(params[:search][:specialty])
    search.user = current_user
    if search.save
      redirect_to root_path
    else
      render "doctors/index"
    end
  end

  private

  def search_params
    params[:search].permit(:location, :radius)
  end

end
