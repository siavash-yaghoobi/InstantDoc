class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :user, optional: true
  has_many :notifications
end
