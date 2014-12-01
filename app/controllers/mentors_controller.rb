class MentorsController < ApplicationController
  before_action :set_mentor, only: [:show, :edit, :update]

  def index
    @mentors = Mentor.all
  end

  def show
    @mentor = Mentor.find(params[:id])
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
    @mentor.skills = set_skills.reject(&:empty?)
  end

  def set_mentor
    @mentor = Mentor.find(params[:id])
  end

  def mentor_params
    params.require(:mentor).permit(:name,
                                   :email,
                                   :company,
                                   :bio,
                                   :photo,
                                   :skills)
  end
end
