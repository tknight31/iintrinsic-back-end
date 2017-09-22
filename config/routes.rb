Rails.application.routes.draw do

	namespace :api do
    	namespace :v1 do
	      resources :tasks
	      resources :projects
	      resources :skills
	      resources :goals
	      resources :users
				post '/login', to: 'auth#create'
				get '/me', to: 'users#me'
    	end
    end
end
