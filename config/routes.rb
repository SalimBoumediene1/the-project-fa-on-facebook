Rails.application.routes.draw do
  get '/', to: 'registrations#index'
  get '/login', to: 'registrations#login'
  post '/login', to: 'registrations#connexion'
  get '/gossip/:gossip', to: 'registrations#gossip', as: 'gossip'
  resources :registrations
end
