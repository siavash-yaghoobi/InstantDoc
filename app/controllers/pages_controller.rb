class PagesController < ApplicationController
  before_action :set_specialties, only: [:home]
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @doctor
  end
end
