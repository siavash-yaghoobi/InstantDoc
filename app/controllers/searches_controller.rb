class SearchesController < ApplicationController
  #before_action :set_specialties, only:
  skip_before_action :authenticate_user!, only: [:home, :index, :show]

  def index

  end

  def create
    search = Search.new(search_params)
  end

  private

  def search_params
    params[:search].permit(:address, :specialty)
  end

end
