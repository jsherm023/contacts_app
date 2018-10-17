Rails.application.routes.draw do
  namespace :api do
    get '/contacts' => 'contacts#index'
    post '/contacts' => 'contacts#create'
  end
end
 
