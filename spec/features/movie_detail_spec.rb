require 'spec_helper'

feature 'Movie details page' do
  let(:upcoming) { create(:type, name: 'upcoming') }
  let(:archives) { create(:type, name: 'archives') }
  let(:hero) { Side.new(name: 'hero') }
  let(:spider_man) { build(:archived_movie, title: 'Spider Man') }
  let(:mary_jane) { build(:hero) }
  let(:create_types) { upcoming and archives }
  let(:create_movie) { spider_man }

  before :each do
    create_types
    create_movie
    mary_jane.side = hero
    spider_man.characters << mary_jane
    spider_man.save     
    visit root_path
  end

  scenario 'shows the movie title and image' do
    click_link 'Spider Man'
    expect(page).to have_content 'Spider Man'
    expect(page).to have_css(
      "img[src*='#{spider_man.image_file_name}']") 
  end

  scenario 'lists each characters name, side, description, and first appearance' do
    click_link 'Spider Man'    
    expect(page).to have_content mary_jane.name
    expect(page).to have_content mary_jane.side_name.capitalize
    expect(page).to have_content mary_jane.description
    expect(page).to have_content mary_jane.first_appearance_comic_name
    expect(page).to have_content mary_jane.first_appearance_issue_number
  end

  scenario "each character's name links to Comic Vine", js: true do
    click_link 'Spider Man'
    page.find('#Mary_Jane').click
    expect(page).to have_content 'ComicVine.com'
  end

  scenario 'character images link to Marvel', js: true do   
    click_link 'Spider Man'
    find(:xpath, "//a/img[@alt='Mary Jane']/..").click
    expect(page).to have_content 'Marvel'
  end
end
