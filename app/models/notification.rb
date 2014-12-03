require 'active_model'

class Notification
  include ActiveModel::Model

  attr_accessor :number,
                :student, 
                :body
end