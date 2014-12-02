module ApplicationHelper

  def resource_name
    :appointment
  end

  def resource
    @appointment = Appointment.new
  end
end
