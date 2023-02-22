Rails.application.routes.draw do
  resources :restaurant, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:index, :new, :create]
  end
end
