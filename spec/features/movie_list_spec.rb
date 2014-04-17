require 'spec_helper'

feature 'movie list' do
  let(:upcoming) { create(:type, name: 'upcoming') }
  let(:archives) { create(:type, name: 'archives') }
  let(:amazing_spider_man) { 
    build(:upcoming_movie, title: 'The Amazing Spider Man')
  }
  let(:x_men) {
    build(:upcoming_movie, title: 'X-Men')
  }

  let(:spider_man_1) {
    build(:archived_movie, title: 'Spider-Man 1')
  }
  let(:spider_man_2) {
    build(:archived_movie, title: 'Spider-Man 2')
  }
     
  let(:create_types) { upcoming and archives }     
  let(:create_movies) { amazing_spider_man and x_men and spider_man_1 and spider_man_2}

  scenario 'lists upcoming movie titles and images' do 
    create_types
    create_movies   
    visit movies_path
    expect(page).to have_content 'Coming Soon'
    expect(page).to have_content amazing_spider_man.title 
    expect(page).to have_content x_men.title
    expect(page).to have_css(
      "img[src*='#{amazing_spider_man.image_file_name}']")     
    expect(page).to have_css(
      "img[src*='#{x_men.image_file_name}']")            
  end

  scenario 'lists archived movie titles' do 
    create_types    
    create_movies
    visit movies_path
    expect(page).to have_content 'Archives'
    expect(page).to have_content spider_man_1.title
    expect(page).to have_content spider_man_2.title  
  end

  scenario 'does not display archived movie images' do
    create_types    
    create_movies
    visit movies_path
    expect(page).to_not have_css(
      "img[src*='#{spider_man_2.image_file_name}']")       
  end
end
