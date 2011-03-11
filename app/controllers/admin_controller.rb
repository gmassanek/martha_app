class AdminController < ApplicationController
  before_filter :login_required
  def index
  end

  def registrations
    #@registrations = Registration.all
    @registrations = Registration.find(:all, :order => :created_at)
  end

  def confirm_payment
    puts "========== About to confirm_payment"
    registration = Registration.find(params[:registration])
    #registration.paid_date = Time.now
    puts registration
    #if registration.save then
    #if registration.update_attributes(:paid_date => Time.now) then
    if registration.update_attribute(:paid_date,Time.now) then
      flash[:message] = "#{registration.name}'s payment received."
      RegistrationMailer.payment_email(registration).deliver
    else
      flash[:message] = "#{registration.name}'s payment could not be updated because the registration is invalid."
    end
    redirect_to admin_registrations_path
  end

end

