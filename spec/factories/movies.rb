FactoryGirl.define do
  factory :movie do
    title 'gladiator'
    sequence(:image_file_name) { |n| "movie_image_#{n}" }

    factory :upcoming_movie do
      after(:build) do |movie|
        upcoming = Type.find_by_name('upcoming')
        movie.type = upcoming
        movie.save
      end
    end

    factory :archived_movie do
      after(:build) do |movie|
        archived = Type.find_by_name('archives')
        movie.type = archived
        movie.save
      end

      factory :archived_movie_with_characters do
        after(:build) do |movie|
          mary_jane = build(:hero)
          norman_osborn = build(:villain)
          movie.characters << mary_jane
          movie.characters << norman_osborn
          movie.save
        end    
      end     
    end   
  end 
end
