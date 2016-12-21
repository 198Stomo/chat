Rails.application.routes.draw do
  devise_for :users
  resources :users
  root to: 'rooms#show'
  devise_scope :social_account do
     root to: "users/sign_in#destroy"
   end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
