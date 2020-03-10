class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :user, optional: true
  has_many :notifications, dependent: :destroy
  after_create :create_notifications
  after_create :timer_start

  private

  def create_notifications
    user = User.joins(:searches)
               .where(searches: {specialty: self.doctor.specialties})
               .order("searches.created_at DESC").first
    if user
      Notification.create!(appointment: self, user: user)
    end
  end
end



