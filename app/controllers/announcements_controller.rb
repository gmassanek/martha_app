class AnnouncementsController < ApplicationController
  before_filter :login_required, :except => [:index]
  def new
    @announcement = Announcement.new
  end

  def edit
    @announcement = Announcement.find(params[:id])
  end
  def update
    ann = Announcement.find(params[:id])
    ann.update_attributes(params[:announcement])
    puts "============================================="
    puts "#{session[:user]}"
    #puts session[:user].inspect
    puts ann.inspect
    puts "============================================="
    ann.save
    flash[:notice] = "Successfully added announcement."
    redirect_to(announcements_path)
  end

  def index
    @announcements = Announcement.all
  end

  def create
    ann = Announcement.new(params[:announcement])
    ann.update_attributes(:user_id => session[:user])
    puts "============================================="
    puts "#{session[:user]}"
    #puts session[:user].inspect
    puts ann.inspect
    puts "============================================="
    ann.save
    flash[:notice] = "Successfully added announcement."
    redirect_to(announcements_path)
  end

  def show
  end

end

