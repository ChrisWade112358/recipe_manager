Rails.application.routes.draw do
  resources :recipes
  resources :ingredients
  resources :recipies
  root to: 'pages#home'
  devise_for :users, controllers: {omniauth_callbacks: 'users/omniauth', registrations: 'users/registrations'}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
