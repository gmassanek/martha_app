class MaterialsController < ApplicationController
  before_filter :materials_login_required

  def index

  end

  def martha
    send_file("#{RAILS_ROOT}/public/lecture_materials/2011_Acute_Care_NPPA_conference_brochure.pdf", :type => 'application/pdf', :disposition => 'inline')
  end
end

