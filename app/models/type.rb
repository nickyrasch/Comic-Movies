class Type < ActiveRecord::Base
  has_many :movies

  validates :name, presence: true

  def self.find_type(name)
    find_by_name(name)
  end  
end
