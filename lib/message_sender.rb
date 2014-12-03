class MessageSender < NoificationsController
attr_accessor :send_message

  def send_message
    sid   = Figaro.env.twilio_account_sid
    token = Figaro.env.twilio_auth_token
    twilio_number = "303-816-3192"
    client = Twilio::REST::Client.new(sid, token)

    client.account.sms.messages.create(from: "+1 #{twilio_number}", 
                                       to: params[:notification][:number], 
                                       body: "A message from #{params[:notification][:student]}: #{params[:notification][:body]}")
  end
end