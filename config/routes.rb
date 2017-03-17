Rails.application.routes.draw do
  resources :admins do
    resources :zones do
      resources :orphanages do
        resources :students
      end
    end
  end

  get '/zones/:id/get_all_orphanages'=>"zones#get_all_orphanages"

  resources :zones
  resources :orphanages
  devise_for :users
  resources :students
  root 'students#index'
end
