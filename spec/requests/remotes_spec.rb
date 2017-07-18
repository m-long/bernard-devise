require 'rails_helper'

RSpec.describe "Remotes", type: :request do
  describe "GET /remotes" do
    it "works! (now write some real specs)" do
      get remotes_path
      expect(response).to have_http_status(200)
    end
  end
end
