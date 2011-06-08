class QuestionairesController < ApplicationController
  before_filter :login_required, :only => [:show, :update, :edit, :destroy]
  # GET /questionaires
  # GET /questionaires.xml
  def index
    @questionaires = Questionaire.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @questionaires }
    end
  end

  # GET /questionaires/1
  # GET /questionaires/1.xml
  def show
    @questionaire = Questionaire.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @questionaire }
    end
  end

  # GET /questionaires/new
  # GET /questionaires/new.xml
  def new
    @questionaire = Questionaire.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @questionaire }
    end
  end

  # GET /questionaires/1/edit
  def edit
    @questionaire = Questionaire.find(params[:id])
  end

  # POST /questionaires
  # POST /questionaires.xml
  def create
    @questionaire = Questionaire.new(params[:questionaire])

    respond_to do |format|
      if @questionaire.save
        flash[:notice] = "Thanks for participating in our survey."
        format.html { 
          render :action => "show"
        }
        format.xml  { render :xml => @questionaire, :status => :created, :location => @questionaire }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @questionaire.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /questionaires/1
  # PUT /questionaires/1.xml
  def update
    @questionaire = Questionaire.find(params[:id])

    respond_to do |format|
      if @questionaire.update_attributes(params[:questionaire])
        format.html { redirect_to(@questionaire, :notice => 'Questionaire was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @questionaire.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /questionaires/1
  # DELETE /questionaires/1.xml
  def destroy
    @questionaire = Questionaire.find(params[:id])
    @questionaire.destroy

    respond_to do |format|
      format.html { redirect_to(questionaires_url) }
      format.xml  { head :ok }
    end
  end
end
