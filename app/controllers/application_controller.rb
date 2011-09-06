class ApplicationController < ActionController::Base
  protect_from_forgery

  def materials_login_required
    if session[:materials_user]
      return true
    end
    flash[:warning]='Please login to continue'
    session[:return_to]=request.request_uri
    redirect_to :controller => "users", :action => "materials_login"
    return false
  end

  def login_required
    if session[:user]
      return true
    end
    flash[:warning]='Please login to continue'
    session[:return_to]=request.request_uri
    redirect_to :controller => "users", :action => "login"
    return false
  end

  def current_user
    session[:user]
  end

  def redirect_to_stored
    if return_to = session[:return_to]
      session[:return_to]=nil
      redirect_to return_to
    else
      redirect_to admin_path
    end
  end
end

