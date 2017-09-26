Rails.application.routes.draw do

	namespace :api do
    	namespace :v1 do
	      resources :tasks
	      resources :projects
				resources :requests
	      resources :skills
	      resources :goals
	      resources :users
				post '/login', to: 'auth#create'
				post '/skills', to: 'skills#create'
				get '/me', to: 'users#me'
				post '/users/:id', to: 'users#update'
    	end
    end
end
