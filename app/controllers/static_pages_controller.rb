class StaticPagesController < ApplicationController
before_action :get_mentors, only: [:index]
before_action :get_student, only: [:index]

  def index
  end

private

  def get_mentors
    @mentors = Mentor.all.sample(3)
  end

  def get_student
    @student = Student.all.sample(3).pop
  end
end
