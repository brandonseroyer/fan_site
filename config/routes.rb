Rails.application.routes.draw do

  resources :genres do
    resources :artists, except: [:index]
  end

  resources :artists, only: [:index] do
    resources :reviews
  end

end
