Rails.application.routes.draw do
  devise_for :users, path: 'users'
  root 'welcome#index'
  resource :message, only: [:new, :create]
  resources :questions, path: 'problem'
  get 'search', to: 'search#index'
  post 'search', to: 'search#show'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
