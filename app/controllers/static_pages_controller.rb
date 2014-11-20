class StaticPagesController < ApplicationController
  def index
    @mentors = Mentor.all.sample(3)
  end
end