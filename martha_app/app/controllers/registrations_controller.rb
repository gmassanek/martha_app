class RegistrationsController < ApplicationController
  def new
    @registration = Registration.new
    @title = "Sign Up"
  end

  def edit
  end

  def create
    @registration = Registration.new(params[:user])
    if @registration.save
      # Handle a successful save.
    else
      @title = "Sign up"
      render :action=>'new'
    end
  end

  def show
    @registration = Registration.find(params[:id])
    @title = @registration.name
  end

end
