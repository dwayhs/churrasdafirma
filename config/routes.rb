Rails.application.routes.draw do
  root 'events#new'

  resources :events
end
