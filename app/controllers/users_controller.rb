class UsersController < ApplicationController

  before_filter :login_required, :except => [:login, :logout]
  def login
    @title = "Login"
    if request.post?
      if session[:user] = User.authenticate(params[:name], params[:password])
        flash[:message]  = "Login successful"
        redirect_to_stored
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

