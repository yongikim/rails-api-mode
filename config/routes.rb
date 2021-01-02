Rails.application.routes.draw do
  resources :users
  resources :auth, only: %i[create destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'auth/user_id' => 'auth#user_id'
end
