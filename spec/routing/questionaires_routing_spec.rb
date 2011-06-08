require "spec_helper"

describe QuestionairesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/questionaires" }.should route_to(:controller => "questionaires", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/questionaires/new" }.should route_to(:controller => "questionaires", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/questionaires/1" }.should route_to(:controller => "questionaires", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/questionaires/1/edit" }.should route_to(:controller => "questionaires", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/questionaires" }.should route_to(:controller => "questionaires", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/questionaires/1" }.should route_to(:controller => "questionaires", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/questionaires/1" }.should route_to(:controller => "questionaires", :action => "destroy", :id => "1")
    end

  end
end
