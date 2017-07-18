require "rails_helper"

RSpec.describe DeviceModelsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/device_models").to route_to("device_models#index")
    end

    it "routes to #new" do
      expect(:get => "/device_models/new").to route_to("device_models#new")
    end

    it "routes to #show" do
      expect(:get => "/device_models/1").to route_to("device_models#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/device_models/1/edit").to route_to("device_models#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/device_models").to route_to("device_models#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/device_models/1").to route_to("device_models#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/device_models/1").to route_to("device_models#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/device_models/1").to route_to("device_models#destroy", :id => "1")
    end

  end
end
