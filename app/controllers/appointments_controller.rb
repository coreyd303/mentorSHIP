class AppointmentsController < ApplicationController

  def index
    redirect_to mentors_path
  end

  def create
    @appointment = Appointment.new(safe_params)
    AppointmentMailer.appointment_email(@appointment.mentor,
                                        @appointment.student = current_user,
                                        @appointment.subject,
                                        @appointment.body
                                        ).deliver
    redirect_to :back, notice: "Your email has been sent!"
  end

  private

  def safe_params
    new_params        = params.require(:appointment).permit(:mentor, 
                                                            :student, 
                                                            :subject, 
                                                            :body)
    
    new_params[:mentor]  = Mentor.find(params[:appointment][:mentor])
    new_params
  end
end