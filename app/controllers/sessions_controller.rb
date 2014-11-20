class SessionsController < ApplicationController
  def create 
    auth = request.env["omniauth.auth"]
    @user = User.find_by_omniauth(auth)
    session[:user_id] = @user.id
    redirect_to profile_type_prompt_path
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
