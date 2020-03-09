class TwilioClient
  def initialize
    @client = Twilio::REST::Client.new ENV["TWILIO_SID"], ENV["TWILIO_TOKEN"]
  end

  def send_message(text, user)
    @client.messages.create(
      from: '+12055484381',
      to: user.telephone,
      body: text
    )
    # Notification.user.telephone
  end
end
