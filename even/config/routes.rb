Rails.application.routes.draw do
  get 'home/index'
  root 'home#index'

  get 'events/new', to: 'events#new', as: 'events_new'
  get 'events/:id', to: 'events#show', as: 'events'

  post 'events/new', to: 'events#create', as: 'events_create'

  get 'events/edit/:id', to: 'events#edit', as: 'events_edit'
  post 'events/edit/:id', to: 'events#modify', as: 'modify'

  get '/all', to: 'events#index', as: 'all'

  get '/delete', to: 'events#delete', as: 'delete_events'
  delete '/destroy', to: 'events#destroy', as: 'destroy_events'

  resources :events
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
