Rails.application.routes.draw do
  get 'guitars/index'
  get '/users/:id/guitars/new', to: "guitars#new", as: 'new_guitar'
  get 'guitars/:id', to: 'guitars#show', as: 'guitar'
  get 'guitars/:id/edit', to: 'guitars#edit', as: 'edit_guitar'
  patch 'guitars/:id', to: 'guitars#update'
  post 'guitars', to: 'guitars#create'
  delete 'guitars/:id', to: 'guitars#destroy'

  root to: 'users#index'
  get 'users/new', to: 'users#new', as: 'new_user'
  get 'users/:id', to: 'users#show', as: 'user'
  get 'users/edit'
  post 'users', to: 'users#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
