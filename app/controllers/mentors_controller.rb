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
      @mentor.skills = Skill.where(id: params[:mentor][:skills].reject { |i| i == "" })
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
      @mentor.skills = Skill.where(id: params[:mentor][:skills].reject { |i| i == "" })
      flash[:success] = "Profile was successfully updated"
      redirect_to mentor_path(@mentor)
    else
      flash[:danger]  = "* = required fields"
      render :edit
    end
  end

private

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