Rails.application.routes.draw do
  resources :quotes
  get 'website/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'website#index'
  get '/index', to: 'website#index'

  get '/residential', to: 'website#residential'

  get '/commercial', to: 'website#commercial'

  get '/quote', to: 'website#quote'
end
