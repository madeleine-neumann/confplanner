Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :companies, only: [:index, :show]
  resources :speakers, only: [:index, :show]
  resources :speaker_travels, only: [:index], path: "travels"
  resources :todos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
