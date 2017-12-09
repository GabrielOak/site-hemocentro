Rails.application.routes.draw do
  get 'control_users/index'

  get 'welcome/index'

  root 'welcome#index'

  devise_for :users
  resources :donors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
