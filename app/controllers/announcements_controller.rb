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
    ann.save
    flash[:notice] = "Successfully added announcement."
    redirect_to(announcements_path)
  end

  def index
    @announcements = Announcement.find(:all, :order => 'updated_at DESC')
  end

  def create
    ann = Announcement.new(params[:announcement])
    ann.update_attributes(:user_id => session[:user])
    ann.save
    flash[:notice] = "Successfully added announcement."
    redirect_to(announcements_path)
  end

  def show
  end

  def destroy
    @announcement = Announcement.find(params[:id])
    @announcement.destroy
    redirect_to announcements_path, :message => "#{@announcement.name}'s payment could not be updated because the registration is invalid."

    respond_to do |format|
      format.html { redirect_to(announcements_url) }
      format.xml  { head :ok }
    end
  end
end

