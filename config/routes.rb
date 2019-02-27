Rails.application.routes.draw do
  resources :songs, only: [:show, :new, :create, :edit, :update]
  resources :genres
  resources :artists, only: [:show, :new, :create, :edit, :update]

  #get '/songs/:id', to 'songs#show'

end
