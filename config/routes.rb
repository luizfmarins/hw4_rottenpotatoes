Rottenpotatoes::Application.routes.draw do

  resources :movies
  post '/movies/movies_with_same_director'

end
