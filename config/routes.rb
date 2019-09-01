Rails.application.routes.draw do
  devise_for :users, path: 'api/v1/users'
  namespace :api do
    namespace :v1 do
      resources :skills, except: [:show, :update]
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
