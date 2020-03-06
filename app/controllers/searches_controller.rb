class SearchesController < ApplicationController
  before_action :set_search, only: [ :show, :edit, :destroy ]

  def index
    @searches = Search.all
    authorize @searches
  end

  def show
    set_search
    authorize @search
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

  def edit
    @specialties = Specialty.all
    authorize @search
  end

  def update
    raise
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
