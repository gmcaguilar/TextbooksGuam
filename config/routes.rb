Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

	root 'posts#index'

	get 'signup' => 'users#new'
	get 'login' => 'sessions#create'
	delete 'logout' => 'sessions#destroy'
	resources :users

end
