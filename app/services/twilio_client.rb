class TwilioClient
  def initialize
    @client = Twilio::REST::Client.new ENV["TWILIO_SID"], ENV["TWILIO_TOKEN"]
  end

  def send_message(text)
    @client.messages.create(
      from: '+12055484381',
      to: '+4915778565713',
      body: text
    )
  end
end
