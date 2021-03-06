Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :lists, only: [:index, :show]
  resources :users,  only: [:index, :show, :update]
  resource :users_positions, only: [:update]
  mount ActionCable.server => '/cable'
end
