Rails.application.routes.draw do
  get 'hello_world', to: 'hello_world#index'
  root 'welcome#index'

  resources :games, except: [:delete]
  resources :tickets, only: [:show]
  resources :users, except: [:delete]
  
end
