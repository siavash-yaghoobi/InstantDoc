class Notification < ApplicationRecord
  belongs_to :user
  belongs_to :appointment

  after_create_commit :send_notification

  def send_notification
    host = Rails.env.development? ? "http://localhost:3000" : "http://www.instantdoc.me"
    puts Rails.application.routes.url_helpers.notification_url(self, host: host)
  end
end
