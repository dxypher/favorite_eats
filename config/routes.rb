FavoriteEats::Application.routes.draw do
  root to: 'pages#index'
  devise_for :users
  resources :favorites

end
