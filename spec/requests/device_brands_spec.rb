require 'rails_helper'

RSpec.describe "DeviceBrands", type: :request do
  describe "GET /device_brands" do
    it "works! (now write some real specs)" do
      get device_brands_path
      expect(response).to have_http_status(200)
    end
  end
end
