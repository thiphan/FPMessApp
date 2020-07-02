Rails.application.routes.draw do
  resources :notes
  resources :sessions
  resources :tickets
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

      root to:'pages#home'
  get 'signup', to: 'fb_users#new'
  resources :fb_users, except: [:new]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'
  get 'delete', to: 'fb_users#index'
  
end
