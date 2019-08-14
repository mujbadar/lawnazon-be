Rails.application.routes.draw do
  root 'accounts#index'

  resources :accounts do
    collection do
      post '/login', to: 'accounts#login'
    end
    resources :projects, only: [:index, :create, :update, :delete] do
      resources :bids
    end
  end

  resources :projects do
    resources :bids, ony: [:create, :update, :delete]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
