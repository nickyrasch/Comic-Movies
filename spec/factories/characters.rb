FactoryGirl.define do
  factory :hero, class: Character do
    name 'Mary Jane'
    comic_vine_id 13380
    marvel_id 1009708

    after(:build) do |hero|
      good = Side.new(name: 'hero')
      hero.side = good
    end
  end

  factory :villain, class: Character do
    name 'norman osborn'
    comic_vine_id 58812 
    marvel_id 1009325

    after(:build) do |villain|
      evil = Side.new(name: 'villain')
      villain.side = evil
    end
  end
end
