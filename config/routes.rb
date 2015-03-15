Rails.application.routes.draw do

  namespace :admin do
    resources :events, path: 'eventos'
    resources :contacts, path: 'contactos'
  end

  get '/inscripcion/:event_id', to: 'subscription#subscribe', as: :subscription
  post '/subscription/submit', to: 'subscription#submit', as: :submit_subscription
  root 'application#home'
end
