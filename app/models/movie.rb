class Movie < ActiveRecord::Base
  belongs_to :type
  has_many :roles
  has_many :characters, through: :roles


  validates :title, presence: true
  validates :image_file_name,
            presence: true,
            uniqueness: true

  def all_characters
    collection = []
    ids = []
    characters.each do |character|
      ids << character.comic_vine_id
    end
    results = ComicVine.fetch_characters(ids)
    results.each_with_index do |result, index|
      collection << Character.new(
        name: result['name'],
        image_file_name: Marvel.fetch_image(characters.find_by_comic_vine_id(result['id']).marvel_id),
        description: result['deck'],
        first_appearance_comic_name: result['first_appeared_in_issue']['name'],
        first_appearance_issue_number: result['first_appeared_in_issue']['issue_number'],
        side_id: characters.find_by_comic_vine_id(result['id']).side_id)
    end

    collection  
  end
end
