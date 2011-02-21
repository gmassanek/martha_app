class AdminController < ApplicationController
  before_filter :login_required
  def index
  end

  def registrations
    @registrations = Registration.all
  end

  def confirm_payment
    puts "========== About to confirm_payment"
    registration = Registration.find(params[:registration])
    registration.paid_date = Time.now
    puts registration.paid_date
    registration.save
    flash[:message] = "#{registration.name}'s payment received."
    redirect_to admin_registrations_path
  end

  def users
  end

end
