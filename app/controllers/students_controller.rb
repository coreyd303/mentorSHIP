class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]
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
  end

  private

  def student_params
    params.require(:student).permit(:name,
                                    :bio,
                                    :cohort,
                                    :module_id)
  end

  def set_student
    @student = Student.find(params[:id])
  end
end
