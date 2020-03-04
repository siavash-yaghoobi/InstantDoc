class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  def set_specialties
    @specialties = Specialty.all
  end
end
