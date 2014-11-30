require 'active_model'

class Appointment
  include ActiveModel::Model

  attr_accessor :mentor, 
                :student, 
                :subject, 
                :body
end