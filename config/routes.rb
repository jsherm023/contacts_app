Rails.application.routes.draw do
  get '/contacts' => 'contacts#index'
  get '/contacts/new' => 'contacts#new'
  get '/contacts/:id' => 'contacts#show'
  post '/contacts/' => 'contacts#create'
  get '/contacts/:id/edit' => 'recipes#edit'
  patch '/contacts/:id' => 'recipes#update'
  delete '/contacts/:id' => 'recipes#destroy'

  namespace :api do
    get '/contacts' => 'contacts#index'
    post '/contacts' => 'contacts#create'
    patch '/contacts/:id' => 'contacts#update'
    delete '/contacts/:id' => 'contacts#destroy'
    get '/contacts/:id' => 'contacts#show'
    post '/users' => 'users#create'
    post '/sessions' => 'sessions#create'
  end
end
 
