Rails.application.routes.draw do
  root 'welcome#index'

  resources :games, except: [:delete]
  resources :tickets, only: [:show]
  resources :users, except: [:delete]
  
end
