class RegistrationsController < ApplicationController
  def new
    if(params[:user].nil?)
      @registration = Registration.new
    else
      @registration = Registration.new(params[:user]) unless params[:user].nil?
    end
    @title = "Sign Up"
  end

  def edit
  end

  def index
    redirect_to register_path
  end

  def create
    @registration = Registration.new(params[:registration])
    if @registration.save
      # Handle a successful save.
      RegistrationMailer.welcome_email(@registration).deliver
      
      #format.html { redirect_to(@registration, :notice => 'User was successfully created.') }
      #format.xml  { render :xml => @registration, :status => :created, :location => @registration }
      redirect_to registration_path(@registration)

    else
      @title = "Sign up"
      #format.html { render :action => "new" }
      #format.xml  { render :xml => @registration.errors, :status => :unprocessable_entity }

      render :action=>'new'
      #redirect_to register_path
      #redirect_to :action => 'new', :email =>@registration.email
    end
  end

  def show
    @registration = Registration.find(params[:id])
    @title = @registration.name
  end

end
