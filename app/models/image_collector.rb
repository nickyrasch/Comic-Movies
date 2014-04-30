class ImageCollector
  # include ActiveModel::Conversion
  # bextend ActiveModel::Naming
  # attr_accessor :url
    

  # def initialize
  #   @ids = collect_ids
  # end

  # def save
  #   #iterate over @ids, fetching the marvel image by id
  #   # puts "First id: #{@ids[0]}"
  #   image_collector = ImageCollector.new(params[:image_collector])
  #   # character = Character.find_by_marvel_id(@ids[0])
  #   # marvel_image_url = Marvel.fetch_image(@ids[0])
  #   # puts "Marvel image: #{marvel_image_url}"
  #   # puts "data type: #{marvel_image_url.class}"
  #   # puts "URI parse: #{URI.parse(marvel_image_url)}"
  #   # character.image = URI.parse(image_collector.url)
  #   if image_collector.save
  #     true
  #   else
  #     false
  #   end
  # end

  def new_character_image
    Character.new
  end

  private
  def collect_ids
    Character.all.map { |character| character.marvel_id }
  end
end