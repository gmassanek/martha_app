class PagesController < ApplicationController
  def home
    @title = "Geoff"
  end

  def event
    @title = "Event Information"
  end

  def info
    @title = "Other Informaton"
  end

end
