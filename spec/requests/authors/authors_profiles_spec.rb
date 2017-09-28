require 'rails_helper'

RSpec.describe "Authors::Profiles", type: :request do
  describe "GET /authors_profiles" do
    it "works! (now write some real specs)" do
      get authors_profiles_path
      expect(response).to have_http_status(200)
    end
  end
end
