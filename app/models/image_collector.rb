class ImageCollector
  include ActiveModel::Conversion
  extend ActiveModel::Naming
    
  def fetch_character_images
    Character.all.each do |character|
      marvel_id = character.marvel_id
      image_url = Marvel.fetch_image(marvel_id)
      character.update_attributes(image: "#{image_url}/standard_fantastic.jpg")
    end
  end

  def up_to_date?
    Character.all.each do |character|
      if character.image_file_size.nil?
        return false
      end
    end

    true
  end
end
