class Doctor < ApplicationRecord
  has_many :doctor_specialties
  has_many :specialties, through: :doctor_specialties
  has_many :appointments
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
