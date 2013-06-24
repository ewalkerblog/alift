class SessionsController < ApplicationController
   
   def create
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    if !user.email
    redirect_to edit_user_path(user), :alert => 'Please enter your email address.'
    else
    redirect_to root_url, :notice => 'Signed in!'
    end
    end
    
    def destroy
    session[:user_id] = nil
    redirect_to root_url
  end
end