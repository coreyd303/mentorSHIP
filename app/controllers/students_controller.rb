class StudentsController < ApplicationController
  before_action :set_student,  only: [:show, :edit, :update, :destroy]
  before_action :user_checker, only: [:show]
  before_action :profile_checker

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)

    if @student.save
      flash.notice = 'Your profile was successfully saved!'
      redirect_to student_path(@student)
    else
      render :new
    end
  end

  def show
    @module   = @student.mod
    @projects = @module.projects
  end

  def edit
  end

  def update
    if @student.update(student_params)
      flash.notice = 'Your profile was successfully updated!'
      redirect_to student_path(@student)
    else
      flash[:danger]  = "* = required fields"
      render :edit
    end
  end

  private

  def student_params
    params.require(:student).permit(:name,
                                    :email,
                                    :bio,
                                    :cohort,
                                    :mod_id,
                                    :posse_id,
                                    :avatar)
  end

  def set_student
    @student = Student.find(params[:id])
  end

  def user_checker
    if current_user == nil
      flash[:danger] = "You must be signed in to view student profiles"
      redirect_to "/"
    else
      profile_checker
    end
  end

  def profile_checker
    if current_user.profile_type == nil
      redirect_to profile_type_prompt_path
      flash[:danger] = "You must select a profile type to continue"
    end
  end
end
