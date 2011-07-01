class ContactMailer < ActionMailer::Base
  include SendGrid
  sendgrid_category :use_subject_lines
  sendgrid_enable   :ganalytics, :opentracking
  default :from => "Acute Care Leadership<contact@acutecareleadershipsummit.com>"
  default :bcc => ["mkenned2@jhmi.edu"]

  def message_from_user(contact)
    sendgrid_category "Acute Care Leadership Summit - User Comment"
    @contact = contact
    mail(:to => 'phood2@jhmi.edu',
         :subject => "Acute Care Leadership Summit - User Comment",
         :from => "#{@contact.name}<#{@contact.email}>")
  end
  def questionaire_completed(questionaire)
    sendgrid_category "Acute Care Leadership Summit - Questionaire Completed"
    @questionaire = questionaire
    mail(:to => 'mkenned2@jhmi.edu',
         :subject => "Acute Care Leadership Summit - Questionaire Completed")
  end
end

