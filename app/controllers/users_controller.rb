class UsersController < ApplicationController
  def update
    @user = current_user
    if profile_type == 'student'
      student = Student.create
      @user.update!(profile_type: profile_type, profile_id: student.id)
      redirect_to new_student_path
    else
      mentor = Mentor.create
      @user.update!(profile_type: profile_type, profile_id: mentor.id)
      redirect_to new_mentor_path
    end
  end

  private

  def profile_type
    params.require(:profile_type)
  end
end

