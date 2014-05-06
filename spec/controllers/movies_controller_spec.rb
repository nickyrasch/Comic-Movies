require 'spec_helper'

describe MoviesController do
  let(:movie) { create(:movie) }

  describe 'GET #index' do
    before(:each) do
      get :index
    end

    it 'instantiates a @movie_filter' do
      expect(assigns[:movie_filter]).to be_an_instance_of(MovieFilter)
    end   

    it 'renders the :index template' do
      expect(response).to render_template :index
    end
  end

  describe 'GET #show' do
    before(:each) do
      get :show, id: movie.id
    end

    it 'assigns the requested movie' do
      expect(assigns[:movie]).to eq movie
    end

    it 'instantiates a @character_filter' do
      expect(assigns[:character_filter]).to be_an_instance_of(CharacterFilter)
    end

    it 'renders the :show template' do
      expect(response).to render_template :show
    end
  end
end
