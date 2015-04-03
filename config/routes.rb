Rails.application.routes.draw do

  namespace :admin do
    resources :events, path: 'eventos' do
      patch :add_subscription
    end
    resources :contacts, path: 'contactos'
    root 'admin#login'
  end

  get '/inscripcion/:event_id', to: 'subscription#subscribe', as: :subscription
  resources :subscription, except: :all do
    post :submit, on: :collection
    post :toggle_assistance, on: :member
  end
  #post '/subscription/submit', to: 'subscription#submit', as: :submit_subscription
  get 'success', to: 'application#success', as: :success
  root 'application#home'
end
