Rails.application.routes.draw do
  resources :orphanages
  devise_for :users
  resources :students
  root 'students#index'
end
