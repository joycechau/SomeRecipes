Rails.application.routes.draw do
  root to: 'static_pages#root'

  namespace :api, defaults: { format: :json } do
    resources :users, only: [:create, :show, :update]
    resource :session, only: [:create, :destroy]
    resources :recipes, only: [:index, :show, :create, :update, :destroy]
    get '/favorite_recipes' => "recipes#favorites"
    get '/own_recipes' => "recipes#own_recipes"
  end
end
