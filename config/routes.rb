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

  authenticated :user do
    root "orphanages#index", as: "authenticated_root"
  end

  root "welcome#index"

  namespace :api, defaults: {format: :json} do
    namespace :v1 do
      get '/get_orphanages_list' => "orphanage#get_orphanages_list"
      get '/get_orphanage_students/:id' => "orphanage#get_orphanage_students"

    end
  end
end
