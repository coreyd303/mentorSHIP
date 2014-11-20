class StaticPagesController < ApplicationController
  def index
    @mentors = Mentor.all.sample(3)
  end

  def profile_type_prompt
  end
end
