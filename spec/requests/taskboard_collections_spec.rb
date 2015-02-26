require 'rails_helper'

RSpec.describe "TaskboardCollections", type: :request do
  describe "GET /taskboard_collections" do
    it "works! (now write some real specs)" do
      get taskboard_collections_path
      expect(response).to have_http_status(200)
    end
  end
end
