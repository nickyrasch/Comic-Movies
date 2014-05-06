require 'spec_helper'

describe MovieFilter do
  let(:upcoming) { create(:type, name: 'upcoming') }
  let(:archived) { create(:type, name: 'archives') }
  let(:upcoming_movie) { build(:upcoming_movie) }
  let(:archived_movie) { build(:archived_movie) }
  let(:movies) { [upcoming_movie, archived_movie] }
  let(:create_types) { upcoming and archived }
  let(:movie_filter) { MovieFilter.new(movies) }

  before(:each) { create_types }

  it 'filters upcoming movies' do
    expect(movie_filter.upcoming_movies).to match_array [upcoming_movie]
  end

  it 'filters archived movies' do
    expect(movie_filter.archived_movies).to match_array [archived_movie]
  end
end
