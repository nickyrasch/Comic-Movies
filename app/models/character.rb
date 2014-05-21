class Character < ActiveRecord::Base
  belongs_to :side
  has_many :roles
  has_many :movies, through: :roles
  has_attached_file :image,
    storage: :s3,
    :s3_credentials => {
      :bucket => ENV['FOG_DIRECTORY'],
      :access_key_id => ENV['AWS_ACCESS_KEY_ID'],
      :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']
    },
    s3_host_name: 's3-us-west-1.amazonaws.com',
    # path: "assets/characters/:id/:style.:extension"
    path: "assets/characters/:id/:filename"  
  do_not_validate_attachment_file_type :image
  
  def side_name
    side.name
  end 

  def s3_image_path
    "http://d2egfeka7tguqq.cloudfront.net/assets/characters/#{id}/standard_fantastic.jpg"
  end
end
