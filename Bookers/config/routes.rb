Rails.application.routes.draw do
  get 'root/index'
  root :to => 'root#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books
end
