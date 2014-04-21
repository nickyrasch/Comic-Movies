class MoviesController < ApplicationController 
  def index
    upcoming = find_type('upcoming')
    archives = find_type('archives')
    @upcoming_movies = upcoming.movies    
    @archived_movies = archives.movies
  end

  def show
    @movie = Movie.find(params[:id])
    characters = @movie.all_characters
    @character_filter = CharacterFilter.new(characters)
  end

  private
  def find_type(name)
    Type.find_by_name(name)
  end

  def find_side(name)
    Side.find_by_name(name)
  end
end
