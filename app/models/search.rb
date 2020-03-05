class Search < ApplicationRecord
  belongs_to :user
  belongs_to :specialty
  validates :location, :radius, presence: true
end
