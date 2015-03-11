Rails.application.routes.draw do
  namespace :admin do
    resources :workshops
  end

  root 'application#home'
end