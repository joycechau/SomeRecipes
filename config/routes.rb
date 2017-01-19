Rails.application.routes.draw do
  root to: 'static_pages#root'

  namespace :api, defaults: { format: :json } do
    resources :users, only: [:create, :show, :update]
    resource :session, only: [:create, :destroy]
    resources :recipes, only: [:index, :show, :create, :update, :destroy]
    resources :favorites, only: [:create, :destroy]
    get 'profile/:username' => "users#profile"
    get '/favorite_recipes' => "recipes#favorite_recipes"
    get '/own_recipes' => "recipes#own_recipes"
  end
end
