Rails.application.routes.draw do
  devise_for :users
  root 'welcome#index'

  resources :games, except: [:delete]
  resources :tickets, only: [:show, :index]
  resources :users, except: [:delete]

end
