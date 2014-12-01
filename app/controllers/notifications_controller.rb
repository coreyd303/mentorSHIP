class NotificationsController < ApplicationController
 
  skip_before_action :verify_authenticity_token
 
  def notify
    sid   = Figaro.env.twilio_account_sid
    token = Figaro.env.twilio_auth_token

    client = Twilio::REST::Client.new(sid, token)

    client.account.sms.messages.create(from: '+1 303-816-3192', 
                                       to: '+1 303-249-6458', 
                                       body: 'Learning to send SMS you are.')

  end
 
end