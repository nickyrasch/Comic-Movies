require 'spec_helper'

describe Movie do
  let(:spider_man) { Movie.create(
    title: 'Spider-Man',
    image_file_name: 'spider_man') 
  }
  let(:create_movie) { spider_man }

  it { should validate_presence_of :title }
  it { should validate_presence_of :image_file_name }
  it { should belong_to :type }

  it 'is invalid with a duplicate image' do
    create_movie
    duplicate_movie = Movie.create(
      title: 'Spider-Man 2',
      image_file_name: 'spider_man') 
    expect(duplicate_movie).to have(1).errors_on(:image_file_name)
  end
end
