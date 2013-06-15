Rottenpotatoes::Application.routes.draw do

  resources :movies
  post '/movies/find_movies_with_same_director'

end
