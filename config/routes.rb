Rails.application.routes.draw do
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
        get '/profile', to: 'users#profile',
        root to: 'topics#index'
      end
    end
  end
end
