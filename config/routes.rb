Rails.application.routes.draw do
  root to: 'topics#index'
  Rails.application.routes.draw do
    namespace :api do
      namespace :v1 do
        resources :entries
        resources :characters
        resources :settings
        resources :character_settings
        resources :follows
        resources :users
        post '/login', to: 'auth#create'
        get '/auto_login', to: 'auth#auto_login'
        get '/profile', to: 'users#profile'
      end
    end
  end
end
