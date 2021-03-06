require 'api_constraints'



Rails.application.routes.draw do
  root :to => 'posts#index'
  devise_for :users
  resources :posts
  # Api definition
  namespace :api, defaults: { format: :json }, 
                              constraints: { subdomain: 'api' }, path: '/' do scope module: :v1,
                                constraints: ApiConstraints.new(version: 1, default: true) do
      # We are going to list our resources here
    end
  end
end
