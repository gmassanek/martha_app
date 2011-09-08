class MaterialsController < ApplicationController
  before_filter :materials_login_required

  def index

  end

  def session1
    send_file("#{RAILS_ROOT}/public/lecture_materials/Session1_DeanAllen.pdf", :type => 'application/pdf', :disposition => 'inline')
  end
  
  def session2a
    send_file("#{RAILS_ROOT}/public/lecture_materials/Session2.1Entry_To_Practice.pdf", :type => 'application/pdf', :disposition => 'inline')
  end

  def session2b
    send_file("#{RAILS_ROOT}/public/lecture_materials/Session2.2_Entry_to_Practice.pdf", :type => 'application/pdf', :disposition => 'inline')
  end

  def session3
    send_file("#{RAILS_ROOT}/public/lecture_materials/Session3_DifficultConversations.pdf", :type => 'application/pdf', :disposition => 'inline')
  end
  
  def session4
    send_file("#{RAILS_ROOT}/public/lecture_materials/Session4_PANPTeamModels.pdf", :type => 'application/pdf', :disposition => 'inline')
  end
  
  def session5
    send_file("#{RAILS_ROOT}/public/lecture_materials/Session5_ProfessionalAdvancementModels.pdf", :type => 'application/pdf', :disposition => 'inline')
  end
  
  def session6a
    send_file("#{RAILS_ROOT}/public/lecture_materials/Session6_BillingModels_Kapu.pdf", :type => 'application/pdf', :disposition => 'inline')
  end
  
  def session6b
    send_file("#{RAILS_ROOT}/public/lecture_materials/Session6_BillingModels_Munro.pdf", :type => 'application/pdf', :disposition => 'inline')
  end
  
  def session7
    send_file("#{RAILS_ROOT}/public/lecture_materials/Session7_Outcomes.pdf", :type => 'application/pdf', :disposition => 'inline')
  end
  
end

