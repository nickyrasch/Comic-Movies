class Character < ActiveRecord::Base
  belongs_to :side
  has_many :roles
  has_many :movies, through: :roles
  has_attached_file :image
  validates_attachment :image, 
                       content_type: { 
                        content_type: ["image/jpg", "image/gif", "image/png"] 
                       }

  def side_name
    side.name
  end 

  def s3_image_path
    "http://d1m6yt1zqrbl4q.cloudfront.net/assets/characters/#{id}/standard_fantastic.jpg"
  end
end
