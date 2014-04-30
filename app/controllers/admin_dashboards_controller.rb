class AdminDashboardsController < ApplicationController
  def show
    @image_collector = ImageCollector.new
  end
end