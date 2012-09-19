class MaterialsController < ApplicationController
  def index

  end

  def show
    respond_to do |format|
      format.ppt do
        response.headers['Content-Disposition'] = "attachment; filename=\"#{filename}.ppt\""
      end
    end
  end

  def session1
    send_ppt('public_policy_berkowitz')
  end

  def send_ppt(file_name)
    send_file("#{RAILS_ROOT}/public/lecture_materials/2012/#{file_name}.ppt", :type => 'multipart/related', :disposition => 'inline')
  end
  
  def session2a
    send_pdf('Session2.1Entry_To_Practice')
  end

  def session2b
    send_pdf('Session2.2_Entry_to_Practice')
  end

  def session3
    send_pdf('Session3_DifficultConversations')
  end
  
  def session3b
    send_pdf('Session3_DifficultConversations_B')
  end
  
  def session3c
    send_pdf('Session3_DifficultConversations_C')
  end
  
  def session3d
    send_pdf('Session3_DifficultConversations_D')
  end
  
  def session3e
    send_pdf('Session3_DifficultConversations_E')
  end
  
  def session3f
    send_pdf('Session3_DifficultConversations_F')
  end
  
  def session4
    send_pdf('Session4_PANPTeamModels')
  end
  
  def session4b
    send_pdf('Session4_B')
  end

  def session4c
    send_pdf('Session4_C')
  end

  def session5
    send_pdf('Session5_ProfessionalAdvancementModels')
  end
  
  def session6a
    send_pdf('Session6_BillingModels_Kapu')
  end
  
  def session6b
    send_pdf('Session6_BillingModels_Munro')
  end
  
  def session6c
    send_pdf('Session6_Billing_C')
  end
  
  def session6d
    send_pdf('Session6_Billing_D')
  end
  
  def session7
    send_pdf('Session7_Outcomes')
  end

  private

  def send_pdf(file_name)
    send_file("#{RAILS_ROOT}/public/lecture_materials/2011/#{file_name}.pdf", :type => 'application/pdf', :disposition => 'inline')
  end
end

