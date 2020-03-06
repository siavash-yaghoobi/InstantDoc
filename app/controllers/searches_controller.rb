class SearchesController < ApplicationController
  before_action :set_search, only: [ :destroy ]

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

  def destroy
    @search.destroy
  end

  private

  def search_params
    params[:search].permit(:location, :radius, :specialty_id)
  end

  def set_search
    @search = Search.find(params[:id])
  end

end
