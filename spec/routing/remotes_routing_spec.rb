require "rails_helper"

RSpec.describe RemotesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/remotes").to route_to("remotes#index")
    end

    it "routes to #new" do
      expect(:get => "/remotes/new").to route_to("remotes#new")
    end

    it "routes to #show" do
      expect(:get => "/remotes/1").to route_to("remotes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/remotes/1/edit").to route_to("remotes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/remotes").to route_to("remotes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/remotes/1").to route_to("remotes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/remotes/1").to route_to("remotes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/remotes/1").to route_to("remotes#destroy", :id => "1")
    end

  end
end
