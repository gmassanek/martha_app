class RegistrationsController < ApplicationController

  before_filter :login_required, :except => [:new, :create]
  def new
    @registration = Registration.new
    @title = "Sign Up"
  end

  def edit
  end

  def index
    #@registrations = Registration.all
    @registrations = Registration.find(:all, :order => :created_at)
  end

  def create
    @registration = Registration.new(params[:registration])
    if @registration.save
      puts "=========== successful registration"
      # Handle a successful save.
      #RegistrationMailer.welcome_email(@registration).deliver
      #redirect_to registrations_success_path(@registration)
      render :action => 'show'
    else
      @title = "Sign up"

      render :action=>'new'
      #redirect_to register_path
      #redirect_to :action => 'new', :email =>@registration.email
    end
  end

  def show
    @registration = Registration.find(params[:id])
    @title = @registration.name
  end

  def confirm_payment
    registration = Registration.find(params[:id])
    #registration.paid_date = Time.now
    #if registration.save then
    if registration.update_attribute(:paid_date,Time.now) then
      flash[:message] = "#{registration.name}'s payment received."
      RegistrationMailer.payment_email(registration).deliver
    else
      flash[:message] = "#{registration.name}'s payment could not be updated because the registration is invalid."
    end
    redirect_to registrations_path
  end
end

