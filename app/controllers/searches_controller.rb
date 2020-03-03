class SearchesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :index, :show]
  def home
    @doctors = Doctor.all
  end

  def method_name

  end
end
