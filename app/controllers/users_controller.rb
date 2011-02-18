class UsersController < ApplicationController
  
  before_filter :login_required, :only=>['welcome', 'change_password', 'hidden']
  
  def login
    @title = "Admin Login"""
    @user = User.new
    if request.post?
      if session[:user] = User.authenticate(params[:name], params[:password])
        flash[:message]  = "Login successful"
        redirect_to_stored
      else
        flash[:warning] = "Login unsuccessful"
      end
    end
  end

  def signup
  end

  def logout
    session[:user] = nil
    flash[:message] = 'Logged out'
    redirect_to :action => 'login'
  end

end
