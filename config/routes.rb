Rails.application.routes.draw do
  root 'servers#index'

  resources :servers, only: [:index, :show, :destroy] do
    resources :bandwidths, only: [:index, :show, :destroy]
  end
end
