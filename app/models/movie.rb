class Movie < ActiveRecord::Base
  belongs_to :type

  validates :title, presence: true
  validates :image_file_name,
            presence: true,
            uniqueness: true
end
