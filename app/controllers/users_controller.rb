class UsersController < ApplicationController

  before_filter :login_required, :except => [:materials_login, :materials_logout, :login, :logout]

  def materials_login
    @title = "Materials Login"
    if request.post?
      if session[:materials_user] = MaterialsUser.authenticate(params[:password])
        flash[:message]  = "Login successful"
        redirect_to_stored
      else
        flash[:warning] = "Login unsuccessful"
      end
    end
  end

  def materials_logout
    session[:materials_user] = nil
    flash[:message] = 'Logged out'
    redirect_to :action => 'materials_login'
  end

  def login
    @title = "Login"
    if request.post?
      user = User.authenticate(params[:name], params[:password])
      if user
        session[:user] = user
        if user.password_reset?
          redirect_to password_reset_path
        else
          flash[:message]  = "Login successful"
          redirect_to_stored
        end
      else
        flash[:warning] = "Login unsuccessful"
      end
    end
  end

  def logout
    session[:user] = nil
    flash[:message] = 'Logged out'
    redirect_to :action => 'login'
  end

  def password_reset
  end

  def password_update
    params[:user][:password_reset] = false
    if current_user.update_attributes(params[:user])
      flash[:message]  = "Password updated"
      redirect_to_stored
    else
      flash[:message] = 'Passwords must match'
      redirect_to password_reset_path
    end
  end

  def index
    @users = User.find(:all, :order => :name)
  end

  def edit
  end

  def create
  end

  def show
  end

  def new
  end
end

