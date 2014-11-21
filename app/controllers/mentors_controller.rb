class MentorsController < ApplicationController

  def index
    @mentors = Mentor.all
  end

  def show
    @mentor = Mentor.find(params[:id])
  end

  def new
    @mentor = Mentor.new
  end

  def create
    @mentor = Mentor.new(mentor_params)

    if @mentor.save
      @mentor.skills_list(params[:mentor][:skills])
      flash[:success] = "Profile was successfully create"
      redirect_to mentor_path(@mentor)
    else
      flash[:danger]  = "* = required field"
      render :new
    end
  end

  def edit
    @mentor = Mentor.find(params[:id])
  end

  def update
    @mentor = Mentor.find(params[:id])
    @mentor.update(mentor_params)

    if @mentor.update(mentor_params)
      @mentor.skills_list(params[:mentor][:skills])
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

  def mentor_params
    params.require(:mentor).permit(:name,
                                   :email,
                                   :company,
                                   :bio,
                                   :photo,
                                   :skills_list)
  end

  def skills
    @skills = Mentor.skills
  end
end