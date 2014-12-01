class AppointmentMailer < ActionMailer::Base
  default from: "MentorShip"

  def appointment_email(mentor, student, subject, body)
    @mentor  = mentor
    @student = student
    @body    = body
    @url     = 'localhost:3000'
    # @url     = 'http://198.211.109.96'
    mail(to: mentor.email, subject: subject)
  end
end

