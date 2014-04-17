require 'spec_helper'

feature 'movie list' do
  let(:upcoming) { create(:type, name: 'upcoming') }
  let(:archives) { create(:type, name: 'archives') }
  let(:amazing_spider_man_2) { 
    Movie.create(
      title: 'Guardians of the Galaxy',
      type_id: upcoming.id)
  }
  let(:x_men_4) { Movie.create(
    title: 'X Men 4',
    type_id: upcoming.id) 
  }
  let(:guardians) { Movie.create(
    title: 'Guardians of the Galaxy',
    type_id: upcoming.id) }
  let(:avengers_2) { Movie.create(
    title: 'Avengers:Age of Ultron',
    type_id: upcoming.id) 
  }
  let(:spider_man_1) { Movie.create(
    title: 'Spider-Man 1',
    type_id: upcoming.id)
  }
  let(:spider_man_2) { Movie.create(
    title: 'Spider-Man 2',
    type_id: upcoming.id)
  }
  let(:spider_man_3) { Movie.create(
    title: 'Spider-Man 3',
    type_id: upcoming.id)
  }      
  let(:create_movies) { amazing_spider_man_2 and x_men_4 and guardians and avengers_2 and spider_man_1 and spider_man_2 and spider_man_3 }
  let(:create_types) { upcoming and archives }

  scenario 'lists upcoming movies' do 
    create_movies
    create_types
    visit movies_path
    expect(page).to have_content 'Coming Soon'
    expect(page).to have_content amazing_spider_man_2.title
    expect(page).to have_content x_men_4.title
    expect(page).to have_content guardians.title
    expect(page).to have_content avengers_2.title
    # Test for images
  end

  scenario 'lists past movies' do 
    create_movies
    create_types
    visit movies_path
    expect(page).to have_content 'Archives'
    expect(page).to have_content spider_man_1.title
    expect(page).to have_content spider_man_2.title
    expect(page).to have_content spider_man_3.title
    # Test for images
  end
end
