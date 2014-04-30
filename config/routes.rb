ComicMovies::Application.routes.draw do
  resources :movies, only: [:index, :show]
  resource :admin_dashboard, only: [:show]
  resources :image_collectors, only: [:create]
  resources :characters, only: [:update]
  root 'movies#index'
end
