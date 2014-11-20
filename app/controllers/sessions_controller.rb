class SessionsController < ApplicationController
  def create 
    auth = request.env["omniauth.auth"]
    @user = User.find_by_omniauth(auth)
    if @user
      session[:user_id] = @user.id
      redirect_to "/#{@user.profile_type}s/#{@user.profile_id}"
    else
      @user = User.create_with_omniauth(auth)
      session[:user_id] = @user.id
      redirect_to profile_type_prompt_path
    end
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
