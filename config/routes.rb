Rails.application.routes.draw do
  get 'visits/index'
  get 'visits/show'
  get 'visits/new'
  get 'visits/edit'
  get 'visit/index'
  get 'visit/show'
  get 'visit/new'
  get 'visit/edit'
  get 'homepage/index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :patients do
    resources :visits
  end
  root 'homepage#index'
end
