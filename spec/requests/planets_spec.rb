require 'rails_helper'

RSpec.describe "Planets", :type => :request do
  describe "GET /planets" do
    it "works! (now write some real specs)" do
      get planets_path
      expect(response).to have_http_status(200)
    end
  end
end
