class MovieFilter
  def initialize(movies)
    @movies = movies
  end

  def upcoming_movies
    upcoming = Type.find_type('upcoming')
    @movies.select { |movie| movie.type == upcoming }
  end

  def archived_movies
    archives = Type.find_type('archives')
    @movies.select { |movie| movie.type == archives }
  end
end
