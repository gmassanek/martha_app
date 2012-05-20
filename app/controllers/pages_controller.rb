class PagesController < ApplicationController
  def home
    @title = "Home"
    @announcements = Announcement.find(:all, :order => 'updated_at DESC', :conditions => {:year => '2012'})
  end

  def conference
    @title = "Conference Information"
  end

  def program
    @title = "Program Information"
    send_file("#{RAILS_ROOT}/public/2012_brochure.pdf", :type => 'application/pdf', :disposition => 'inline')
  end

  def hotel
    @title = "Hotel and Travel Informaton"
  end
  
  def planning
    @title = "Planning Committee"
  end
  
  def sessions
    @title = "Sessions"
  end
  
  def speakers
    @title = "Speakers"
  end

  def mission
    @title = "Mission"
  end
  
  def history
    @title = "History"
  end
  
  def faq
    @title = "FAQ"
  end

  def flier
    @title = "Flier'
    send_file("#{RAILS_ROOT}/public/2012_nyp_flyer.pdf", :type => 'application/pdf', :disposition => 'inline')
  end
end

