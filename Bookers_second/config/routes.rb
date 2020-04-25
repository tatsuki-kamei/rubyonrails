Rails.application.routes.draw do
  get 'about' => "root#about"
  get 'home/about' => "root#about"
  root to: 'root#top'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only:[:show, :edit,:index, :update]
  resources :profile_images,only:[:new, :show, :edit, :update]
  resources :books,only:[:index, :show, :new, :create, :edit, :destroy, :update]
end
