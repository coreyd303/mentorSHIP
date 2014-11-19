class MentorsController < ApplicationController

  def index
    @mentors = Mentor.all
  end

  def show
  end

end