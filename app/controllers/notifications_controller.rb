class NotificationsController < ApplicationController
 
  skip_before_action :verify_authenticity_token
 
  def notify(number, body)
    sid   = Figaro.env.twilio_account_sid
    token = Figaro.env.twilio_auth_token
    twilio_number = "303-816-3192"

    client = Twilio::REST::Client.new(sid, token)

    client.account.sms.messages.create(from: '+1 #{twilio_number}', 
                                       to: number, 
                                       body: body)

  end
 
end