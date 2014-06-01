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
    comic_vine.fetch_characters
  end

  private
  def collect_ids
    characters.map { |character| character.comic_vine_id }
  end
end
