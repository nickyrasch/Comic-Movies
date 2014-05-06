require 'spec_helper'

describe Movie do
  let(:spider_man) { create(:archived_movie_with_characters, image_file_name: 'spider_man') }
  let(:upcoming) { build(:type, name: 'upcoming') }
  let(:mary_jane) { spider_man.characters.find_by_name('Mary Jane') }
  let(:norman_osborn) { spider_man.characters.find_by_name('norman osborn') }
  let(:ids) { [mary_jane.comic_vine_id, norman_osborn.comic_vine_id] }
  let(:comic_vine) { ComicVine.new( [ids] ) }
  let(:create_movie) { spider_man }

  it 'is invalid without a title' do
    expect(build(:movie, title: nil)).to_not be_valid
  end

  it 'is invalid without an image file name' do
    expect(build(:movie, image_file_name: nil)).to_not be_valid
  end

  it 'belongs to a type' do
    spider_man.type = upcoming
    expect(spider_man.type).to eq(upcoming)
  end

  it 'is invalid with a duplicate image' do
    create_movie
    duplicate_movie = 
      build(:movie, image_file_name: spider_man.image_file_name) 
    expect(duplicate_movie).to have(1).errors_on(:image_file_name)
  end

  it "collects its characters's Comic Vine id's" do
    expect(spider_man.collect_ids).to match_array [mary_jane.comic_vine_id, norman_osborn.comic_vine_id]
  end

  it 'collects Comic Vine API results into an array of characters' do
    results = comic_vine.fetch_characters
    characters = spider_man.collect_characters(results)
    expect(characters.count).to eq spider_man.characters.count
    expect(characters.first.description).to include('Mary Jane')  
  end

  it 'returns all characters for a movie' do
    expect(spider_man.all_characters.count).to eq spider_man.characters.count
  end
end 
