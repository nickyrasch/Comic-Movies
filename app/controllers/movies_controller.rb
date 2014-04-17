class MoviesController < ApplicationController 
  def index
    upcoming = find_type('upcoming')
    archives = find_type('archives')
    @upcoming_movies = upcoming.movies    
    @archived_movies = archives.movies
  end

  private
  def find_type(name)
    Type.find_by_name(name)
  end
end
