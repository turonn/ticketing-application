Rails.application.routes.draw do
  devise_for :users
  get 'hello_world', to: 'r#index'
  root 'welcome#index'

  resources :games, except: [:delete]
  resources :tickets, only: [:show, :index]
  resources :users, except: [:delete]

end
