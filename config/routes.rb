Rails.application.routes.draw do
  get '/users' => 'users#index'
  get '/users/:id' => 'users#show'

  resources :articles
  devise_for :users
  root 'articles#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
