require 'spec_helper'

describe ImageCollectorsController do
  describe 'POST #create' do
    before(:each) { post :create }

    it 'redirects to admin_dashshboard_path' do
      expect(response).to redirect_to admin_dashboard_path
    end
  end
end
