class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :searches
  has_many :appointments
  has_many :notifications
  has_many :doctors, through: :appointments
  validates :telephone, format: { with: /\(?\+\(?49\)?[ ()]?([- ()]?\d[- ()]?){10}/,
  message: 'Please give a german phone number' }
end
