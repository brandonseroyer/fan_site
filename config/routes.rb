Rails.application.routes.draw do
  resources :genres do
    resources :artists
  end
end
