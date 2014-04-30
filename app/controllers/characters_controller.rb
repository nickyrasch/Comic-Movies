class CharactersController < ApplicationController
  def update
    character = Character.find(params[:id])
    puts "params[:ch][:image]: #{params[:character][:image]}"
    image_url = "#{params[:character][:image]}/standard_fantastic.jpg"
    if character.update_attributes(image: image_url)
      flash[:notice] = 'Character updated'
    else
      flash[:notice] = 'Error. Character not updated'
    end
    redirect_to admin_dashboard_path
  end
end