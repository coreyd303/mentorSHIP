class UsersController < ApplicationController
  def update
    @user = current_user
    @user.update(profile_type: profile_type)
    if @user.profile_type == 'Student'
      redirect_to new_student_path
    else
      redirect_to new_mentor_path
    end
  end

  private

  def profile_type
    params.require(:profile_type)
  end
end

