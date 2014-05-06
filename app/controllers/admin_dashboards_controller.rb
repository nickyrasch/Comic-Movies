class AdminDashboardsController < ApplicationController
  before_action :authenticate_admin!

  def show
    @image_collector = ImageCollector.new
  end
end