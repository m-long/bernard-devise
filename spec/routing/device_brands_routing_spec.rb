require "rails_helper"

RSpec.describe DeviceBrandsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/device_brands").to route_to("device_brands#index")
    end

    it "routes to #new" do
      expect(:get => "/device_brands/new").to route_to("device_brands#new")
    end

    it "routes to #show" do
      expect(:get => "/device_brands/1").to route_to("device_brands#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/device_brands/1/edit").to route_to("device_brands#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/device_brands").to route_to("device_brands#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/device_brands/1").to route_to("device_brands#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/device_brands/1").to route_to("device_brands#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/device_brands/1").to route_to("device_brands#destroy", :id => "1")
    end

  end
end
