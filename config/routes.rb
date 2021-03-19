Rails.application.routes.draw do
  resources :servers do
    resources :bandwidths
  end
end
