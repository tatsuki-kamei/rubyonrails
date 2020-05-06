Rails.application.routes.draw do
	root  to: 'home#top'
 	get 'home/about' => "home#about"
	devise_for :users
 	resources :users,only: [:show,:index,:edit,:update] do
 		member do
 			get :followings, :followers
 		end
 	end
 	resources :relationships, only: [:create, :destroy]
 	resources :books do
 		resource :favorites,only: [:create,:destroy]
 		resources :book_comments, only: [:create,:destroy]
 	end
end
