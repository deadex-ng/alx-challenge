Rails.application.routes.draw do
  resources :line_items
  resources :carts
  resources :instruments
  devise_for :users, controllers: {
    registrations: 'registrations'
  }

  get 'checkout', to: 'checkouts#show'
  get 'checkout/success', to: 'checkouts#success'
  root 'instruments#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
