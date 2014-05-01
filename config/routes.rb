ComicMovies::Application.routes.draw do
  resources :movies, only: [:index, :show]
  resource :admin_dashboard, only: [:show]
  resource :image_collector, only: [:create]
  resources :characters, only: [:update]
  root 'movies#index'
end
