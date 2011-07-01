class RegistrationMailer < ActionMailer::Base
  include SendGrid
  sendgrid_category :use_subject_lines
  sendgrid_enable   :ganalytics, :opentracking
  default :from => "Acute Care Leadership Summit<registration@acutecareleadershipsummit.com>"
  default :bcc => ["phood2@jhmi.edu", "mkenned2@jhmi.edu"]

  def welcome_email(registration)
    sendgrid_category "Welcome"
    @registration = registration
    @url  = "http://accutecareleadership.com/register"
    mail(:to => registration.email,
         :subject => "Welcome to the Conference")
  end
  def payment_email(registration)
    puts "============== in payment_email"
    sendgrid_category "Payment"
    @registration = registration
    puts registration
    mail(:to => registration.email,
         :subject => "Your Payment Has Been Received")
  end
end

