class AppointmentMailer < ActionMailer::Base
  default from: "someone@mentorship.com"

  def appointment_email(mentor, student, subject, body)
    @mentor     = mentor
    @student    = student
    @body       = body
    @mentorship = 'http://198.211.109.96'
    mail(to: @mentor.email, subject: subject)
  end
end

