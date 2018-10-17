Rails.application.routes.draw do
  namespace :api do
    get '/contacts' => 'contacts#index'
    post '/contacts' => 'contacts#create'
    patch '/contacts/:id' => 'contacts#update'
    delete '/contacts/:id' => 'contacts#destroy'
    get '/contacts/:id' => 'contacts#show'
  end
end
 
