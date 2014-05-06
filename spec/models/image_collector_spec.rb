require 'spec_helper'

describe ImageCollector do
  let(:image_collector) { ImageCollector.new }
  let(:fetch_images) { image_collector.fetch_character_images }
  let(:hero) { create(:hero) }
  let(:villain) { create(:villain) }
  let(:create_characters) { hero and villain}

  before :each do
    create_characters
    fetch_images
  end

  it 'fetches character images' do
    Character.all.each do |character|
      expect(character.image_file_size).to_not be_nil
    end
  end

  it 'determines whether character images are up to date' do
    expect(image_collector.up_to_date?).to eql true
  end
end
