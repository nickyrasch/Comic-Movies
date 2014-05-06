class Movie < ActiveRecord::Base
  belongs_to :type
  has_many :roles
  has_many :characters, through: :roles


  validates :title, presence: true
  validates :image_file_name,
            presence: true,
            uniqueness: true

  def all_characters
    ids = collect_ids
    comic_vine = ComicVine.new(ids)
    results = comic_vine.fetch_characters
    collect_characters(results)
  end

  def collect_ids
    characters.map { |character| character.comic_vine_id }
  end

  def collect_characters(results)
    results = results['results']
    results.map do |result|
      character = Character.find_or_create_by(comic_vine_id: result['id'])
      character.assign_attributes(
        name: result['name'],
        description: result['deck'],
        first_appearance_comic_name: result['first_appeared_in_issue']['name'],
        first_appearance_issue_number: result['first_appeared_in_issue']['issue_number'],
        side_id: characters.find_by_comic_vine_id(result['id']).side_id)
      character
    end
  end
end
