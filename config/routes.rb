ComicMovies::Application.routes.draw do
  devise_for :admins, only: [:sessions, :passwords], path: '', path_names: { sign_in: 'login', sign_out: 'logout' }
  resources :movies, only: [:index, :show]
  resource :admin_dashboard, only: [:show]
  resource :image_collector, only: [:create]
  resources :characters, only: [:update]
  root 'movies#index'
end
