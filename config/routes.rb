Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  root 'main#index'

  devise_for :users

  resources :messages
  # resources :projects
  # resources :options
  # resources :galleries
  # resources :contents
  # resources :products
  # resources :sliders
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
