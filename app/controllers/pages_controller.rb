class PagesController < ApplicationController
  def home
    @title = "Home"
    @announcements = Announcement.find(:all, :order => 'updated_at DESC')
  end

  def event
    @title = "Event Information"
  end

  def info
    @title = "Other Informaton"
  end

end

