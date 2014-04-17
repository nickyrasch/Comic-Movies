require 'spec_helper'

describe MoviesController do
  let(:upcoming) { create(:type, name: 'upcoming') }
  let(:archives) { create(:type, name: 'archives') }
  let(:avengers) { build(:upcoming_movie) }
  let(:spider_man) { build(:archived_movie) }
  let(:create_types) { upcoming and archives }

  describe 'GET #index' do
    before(:each) do
      create_types
      get :index
    end

    it 'populates an array of upcoming movies' do
      expect(assigns[:upcoming_movies]).
        to match_array [avengers]
    end

    it 'populates an array of archived movies' do
      expect(assigns[:archived_movies]).
        to match_array [spider_man]
    end    

    it 'renders the :index template' do
      expect(response).to render_template :index
    end
  end
end
