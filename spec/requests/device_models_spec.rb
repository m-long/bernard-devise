require 'rails_helper'

RSpec.describe "DeviceModels", type: :request do
  describe "GET /device_models" do
    it "works! (now write some real specs)" do
      get device_models_path
      expect(response).to have_http_status(200)
    end
  end
end
