class PagesController < ApplicationController
  def home
    @title = "Home"
  end

  def event
    @title = "Event Information"
  end

  def info
    @title = "Other Informaton"
  end

end
