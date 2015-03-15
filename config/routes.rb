Rails.application.routes.draw do

  namespace :admin do
    resources :events, path: 'talleres'
    resources :contacts, path: 'contactos'
  end

  root 'application#home'
end
