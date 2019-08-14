Rails.application.routes.draw do
  root 'accounts#index'
  resources :bids
  resources :accounts do
  collection do
    post '/login', to: 'accounts#login'
    end
    resources :projects, only: [:index, :create, :update, :delete] do
      resources :bids, only: [:create, :update, :delete]
    end

  end
  resources :projects, only: [:index, :show]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
