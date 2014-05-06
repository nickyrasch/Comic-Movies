class ImageCollectorsController < ApplicationController
  def create
    image_collector = ImageCollector.new
    image_collector.fetch_character_images
    redirect_to admin_dashboard_path
  end

  def image_collector_params
    params.require(:image_collector).permit(:image)
  end
end
