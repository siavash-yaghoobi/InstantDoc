class Notification < ApplicationRecord
  include ActionView::Helpers
  belongs_to :user
  belongs_to :appointment

  after_create_commit :send_notification

  def send_notification
    host = Rails.env.development? ? "http://localhost:3000" : "http://www.instantdoc.me"
    url = Rails.application.routes.url_helpers.notification_url(self, host: host)

    text = "Dr. #{appointment.doctor.last_name} is available in #{distance_of_time_in_words_to_now(appointment.start_at)}.\n"
    text += "Go to #{url} to confirm."
    TwilioClient.new.send_message(text)


  end
end
