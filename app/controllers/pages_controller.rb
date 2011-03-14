class PagesController < ApplicationController
  def home
    @title = "Home"
    @announcements = Announcement.find(:all, :order => 'updated_at DESC')
  end

  def conference
    @title = "Conference Information"
  end

  def info
    @title = "Hotel and Travel Informaton"
  end

end

