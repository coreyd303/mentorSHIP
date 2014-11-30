require 'active_model'

class Appointment
  include ActiveModel::Model
  attr_accessor :mentor, 
                :student, 
                :to, 
                :subject, 
                :body
end