Rails.application.routes.draw do
  Rails.application.routes.draw do
    namespace :api do
      namespace :v1 do
        resources :entries
        resources :characters
        resources :settings
        resources :users
        resources :character_settings
        resources :follows
      end
    end
  end
end
