require 'rails_helper'

RSpec.describe "StaticPages", type: :request do

  describe "GET /select" do
    it "returns http success" do
      get "/static_pages/select"
      expect(response).to have_http_status(:success)
    end
  end

end
