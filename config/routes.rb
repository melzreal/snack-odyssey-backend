Rails.application.routes.draw do


	post '/api/login', to: 'api/sessions#create'
	get  '/api/get_current_user', to: 'api/sessions#get_current_user'
  delete '/api/logout', to: 'sessions#destroy'
   
 
	namespace :api do
		
      resources :blogs do 
        resources :posts 
      end 
      
 		resources :users 
      
		resources :countries
    resources :places

  	
  	
  	

 	end 
 	
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
