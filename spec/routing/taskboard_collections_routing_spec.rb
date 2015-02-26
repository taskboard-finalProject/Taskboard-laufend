require "rails_helper"

RSpec.describe TaskboardCollectionsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/taskboard_collections").to route_to("taskboard_collections#index")
    end

    it "routes to #new" do
      expect(:get => "/taskboard_collections/new").to route_to("taskboard_collections#new")
    end

    it "routes to #show" do
      expect(:get => "/taskboard_collections/1").to route_to("taskboard_collections#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/taskboard_collections/1/edit").to route_to("taskboard_collections#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/taskboard_collections").to route_to("taskboard_collections#create")
    end

    it "routes to #update" do
      expect(:put => "/taskboard_collections/1").to route_to("taskboard_collections#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/taskboard_collections/1").to route_to("taskboard_collections#destroy", :id => "1")
    end

  end
end
