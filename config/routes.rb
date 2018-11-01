Rails.application.routes.draw do
  get '/', to: 'registrations#index'
  resources :registrations
end
