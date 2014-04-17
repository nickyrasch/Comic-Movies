ComicMovies::Application.routes.draw do
  resources :movies, only: [:index]
end
