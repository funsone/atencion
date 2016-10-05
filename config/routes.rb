Rails.application.routes.draw do

  devise_for :users
  get 'home/index'
  root "home#index"

  resources :personas do
resources :solicituds
  end
  resources :ayudas
  resources :departamentos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
