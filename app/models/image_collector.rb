class ImageCollector
  include ActiveModel::Conversion
  extend ActiveModel::Naming
    
  def fetch_character_images
    marvel_ids = collect_marvel_ids
    image_urls = marvel_ids.map { |id| Marvel.fetch_image(id) }
    Character.all.each do |character|
      marvel_id = character.marvel_id
      image_url = Marvel.fetch_image(marvel_id)
      character.update_attributes(image: "#{image_url}/standard_fantastic.jpg")
    end
  end

  private
  def collect_marvel_ids
    Character.all.map { |character| character.marvel_id }
  end
end
