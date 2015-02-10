Rails.application.routes.draw do
  root "urls#home"

  get ':slug' => 'urls#show'

  resources :urls
end
