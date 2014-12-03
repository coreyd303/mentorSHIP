class UsersController < ApplicationController
  def update
    @user = current_user

    if profile_type == 'students'
      student = Student.create
      @user.update!(profile_type: profile_type, profile_id: student.id)
      redirect_to edit_student_path(student)
    else 
      mentor = Mentor.create
      @user.update!(profile_type: profile_type, profile_id: mentor.id)
      redirect_to edit_mentor_path(mentor)
    end
  end

  private

  def profile_type
    params.require(:profile_type)
  end
end

