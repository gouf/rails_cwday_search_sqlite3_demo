Rails.application.routes.draw do
  get 'users/search', to: 'users#search'
  get 'users/search/:cwday', to: 'users#search'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
