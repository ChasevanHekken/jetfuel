Rails.application.routes.draw do
  root "urls#home"

  resources :urls
end
