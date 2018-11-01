Rails.application.routes.draw do
  get '/', to: 'registrations#index'
  get '/login', to: 'registrations#login'
  post '/login', to: 'registrations#connexion'
  resources :registrations
  resources :gossip
end
