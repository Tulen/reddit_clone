Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resource :session
  resources :posts do
    resources :comments, only: [:new, :create, :destroy]
  end
  resources :subs
  resources :moderations
  resources :post_subs

end
