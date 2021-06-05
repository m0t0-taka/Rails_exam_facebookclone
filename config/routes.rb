Rails.application.routes.draw do
  resources :posts do
    collection do
      post :confirm
    end
  end
  resources :pictures do
    collection do
      picture :confirm
    end
  end
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]
end
