class Character < ActiveRecord::Base
  belongs_to :side
  has_many :roles
  has_many :movies, through: :roles
  has_attached_file :image
  do_not_validate_attachment_file_type :image
  
  def side_name
    side.name
  end 

  def s3_image_path
    "http://d1m6yt1zqrbl4q.cloudfront.net/assets/characters/#{id}/standard_fantastic.jpg"
  end
end
