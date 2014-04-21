class Character < ActiveRecord::Base
  belongs_to :side
  has_many :roles
  has_many :movies, through: :roles

  def side_name
    side.name
  end

  def self.find_all
    characters = []
    results = Marvel.all_characters
    results.each do |result|
      characters << Character.new(
                     name: result['name'],
                     thumbnail: result['thumbnail']['path'],
                     description: result['description'])
    end
    characters
  end  
end
