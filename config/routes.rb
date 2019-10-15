Rails.application.routes.draw do

  resources :snacks
	namespace :api do
 		resources :users
		resources :countries
        resources :places
 	end 
 	
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
