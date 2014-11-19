class SessionsController < ApplicationController
  def create 
    auth = request.env["omniauth.auth"]
    @user = User.find_by_omniauth(auth)
    binding.pry
    session[:user_id] = @user.id
    redirect_to '/'
  end
end
