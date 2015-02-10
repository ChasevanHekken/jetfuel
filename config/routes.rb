Rails.application.routes.draw do
  root "urls#home"

  get ':slug' => 'urls#show'

  resources :urls

  namespace :api do
    resources :urls
  end
end
