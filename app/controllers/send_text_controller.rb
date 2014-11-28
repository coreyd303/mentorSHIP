class SendTextController < ApplicationController


  def send_text_message
    twilio_sid: "twilio_sid"
    twilio_token: "twilio_token"
    twilio_phone_number: "twilio_phone_number"

    @twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token

    number_to_sent_to = params[:number_to_send_to]

    @twilio_client.account.sms.messages.create(
      :from => "+1{twilio_phone_numebr}",
      :to   => number_to_send_to,
      :body => "This should be from form"
    )
  end

end
