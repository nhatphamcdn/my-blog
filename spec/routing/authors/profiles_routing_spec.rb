require "rails_helper"

RSpec.describe Authors::ProfilesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/authors/profiles").to route_to("authors/profiles#index")
    end

    it "routes to #new" do
      expect(:get => "/authors/profiles/new").to route_to("authors/profiles#new")
    end

    it "routes to #show" do
      expect(:get => "/authors/profiles/1").to route_to("authors/profiles#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/authors/profiles/1/edit").to route_to("authors/profiles#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/authors/profiles").to route_to("authors/profiles#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/authors/profiles/1").to route_to("authors/profiles#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/authors/profiles/1").to route_to("authors/profiles#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/authors/profiles/1").to route_to("authors/profiles#destroy", :id => "1")
    end

  end
end
