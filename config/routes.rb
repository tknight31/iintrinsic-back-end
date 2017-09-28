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
				get '/skills/:id', to: 'skills#show'
				get '/projects/:id', to: 'projects#show'
				post '/requests/:id', to: 'requests#update'
				get '/projects/:id/users', to: 'projects#users'
				get '/projects/created/:id', to: 'projects#created_projects'
				get '/projects/user/:id', to: 'projects#projects'
				get '/me', to: 'users#me'
				post '/users/:id', to: 'users#update'
				post '/users/:id/location', to: 'users#update_location'
				post '/users/:id/ghost', to: 'users#update_ghost'
				post '/users/:id/image', to: 'users#update_image'
    	end
    end
end
