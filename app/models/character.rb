class Character < ActiveRecord::Base
  belongs_to :side
  has_many :roles
  has_many :movies, through: :roles
  has_attached_file :image,
                    storage: :s3,
                    s3_credentials: 'config/initializers/s3.yml',
                    :s3_host_name   => 's3-us-west-1.amazonaws.com'
  do_not_validate_attachment_file_type :image                  

  def side_name
    side.name
  end 
end
