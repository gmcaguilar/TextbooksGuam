Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

	root 'posts#index'

	get 'signup' => 'users#new'
	resources :users

	get 'login' => 'sessions#new'
	post 'login' => 'sessions#create'
	get 'logout' => 'sessions#destroy'

	get 'create' => 'posts#new'
	resources :posts

end
