require 'spec_helper'

describe AdminDashboardsController do
  describe 'GET #show' do
    before(:each) { get :show }

    it 'instantiates an @image_collector' do
      expect(assigns[:image_collector]).to be_instance_of(ImageCollector)
    end

    it 'renders the show template' do
      expect(response).to render_template :show
    end
  end
end