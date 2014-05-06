require 'spec_helper'

describe CharacterFilter do
  let(:movie) { create(:archived_movie_with_characters) }
  let(:characters) { movie.characters }
  let(:mary_jane) { characters.find_by_name('Mary Jane') }
  let(:norman_osborn) { characters.find_by_name('norman osborn') }
  let(:character_filter) { CharacterFilter.new(characters) }

  it "filters a movie's heroes" do
    expect(character_filter.heros).to match_array [mary_jane]
  end

  it "filters a movie's villains" do
    expect(character_filter.villains).to match_array [norman_osborn]
  end
end
