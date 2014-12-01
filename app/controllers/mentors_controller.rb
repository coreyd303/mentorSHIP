class MentorsController < ApplicationController
  before_action :set_mentor, only: [:show, :edit, :update]
  before_action :set_student, only: [:show]
  before_action :profile_checker

  def index
    @mentors = Mentor.includes(:skills)
    @skills  = Skill.all

    if params[:filter]
      @mentors = @mentors.find_all { |m| m.skills.collect { |s| s.name }.include?(params[:filter]) }
    end
  end

  def show
    @appointment = Appointment.new
  end

  def new
    @mentor = Mentor.new
    @skills = Skill.all
  end

  def create
    @mentor = Mentor.new(mentor_params)

    if @mentor.save
      add_mentor_skills
      flash[:success] = "Profile was successfully create"
      redirect_to mentor_path(@mentor)
    else
      flash[:danger]  = "* = required field"
      render :new
    end
  end

  def edit
  end

  def update
    @mentor.update(mentor_params)

    if @mentor.update(mentor_params)
      add_mentor_skills
      flash[:success] = "Profile was successfully updated"
      redirect_to mentor_path(@mentor)
    else
      flash[:danger]  = "* = required fields"
      render :edit
    end
  end

  def search
    @mentors = Mentor.find_matches(params[:query])
  end


private

  def add_mentor_skills
    set_skills     = Skill.where(id: params[:mentor][:skills])
    @mentor.skills = set_skills
  end

  def set_mentor
    @mentor = Mentor.find(params[:id])
  end

  def set_student
    @student = Student.find(params[:id])
  end

  def mentor_params
    params.require(:mentor).permit(:name,
                                   :email,
                                   :company,
                                   :bio,
                                   :photo,
                                   :skills)
  end

  def profile_checker
    if current_user.profile_type == nil
      redirect_to profile_type_prompt_path
      flash[:danger] = "You must select a profile type to continue"
    end
  end
end
