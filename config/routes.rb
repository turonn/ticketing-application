Rails.application.routes.draw do
  get 'hello_world', to: 'hello_world#index'
  devise_for :users
  root 'welcome#index'

  resources :games, except: [:delete]
  resources :tickets, only: [:show, :index]
  resources :users, except: [:delete]

end
