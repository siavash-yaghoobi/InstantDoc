class SearchesController < ApplicationController
  #before_action :set_specialties, only:
  # skip_before_action :authenticate_user!, only: [:home, :index, :show]

  def index
    @searches = Search.all
    authorize @searches
  end

  def create
    @search = Search.new(search_params)
    @search.user = current_user
    authorize @search
    if @search.save
      redirect_to my_searches_path
    else
      render "doctors/index"
    end
  end

  private

  def search_params
    params[:search].permit(:location, :radius, :specialty_id)
  end

end
