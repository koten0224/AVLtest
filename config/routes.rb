Rails.application.routes.draw do
  devise_for :users, path: 'users'
  root 'welcome#index'
  resource :message, only: [:new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
