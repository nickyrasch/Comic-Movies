class ImageCollectorsController < ApplicationController
  def create
    puts "Params: #{params}"
    image_collector = ImageCollector.new(image_collector_params)
    # image_collector.url = "#{params[:image_collector][:url]}.jpg"
    # image_collector.url = params[:image_collector][:url]
    # character = Character.first
    # marvel_image_url = Marvel.fetch_image(character.marvel_id)
    # marvel_image_url = "#{marvel_image_url}.jpg"
    # puts "Marvel image: #{marvel_image_url}"
    # puts "data type: #{marvel_image_url.class}"
    # puts "URI parse: #{URI.parse(marvel_image_url)}"
    # begin
      # character.image = URI.parse(URI.encode(marvel_image_url.strip))
    # rescue Exception => e  
    #   puts "Exception error: #{e.message}"
    # end
    if image_collector.save
      flash[:notice] = 'Fetched'
    else
      flash[:notice] = 'Error'
    end
    redirect_to admin_dashboard_path


    # image_collector = ImageCollector.new

    # if image_collector.save
    #   flash[:notice] = 'Fetched'
    # else
    #   flash[:notice] = 'Error'
    # end
    # redirect_to admin_dashboard_path
  end

  def image_collector_params
    params.require(:image_collector).permit(:image)
  end
end
