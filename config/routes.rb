Rails.application.routes.draw do

  root 'home#index'

  get 'home/index'

  devise_for :users
  #root 'posts#index'

  resources :essays
  resources :posts do
    resources :comments
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
