class StaticPagesController < ApplicationController
# before_action :get_mentors, only: [:index]
# before_action :get_student, only: [:index]

  def index
    @mentors = Mentor.all.sample(3)
    @student = Student.all.sample(3).pop
  end

private

  def get_mentors

  end

  def get_student
    
  end

  def profile_type_prompt
    @user = current_user
  end
end
