Rottenpotatoes::Application.routes.draw do

  resources :movies
  match ':controller(/:action(/:id))'

end
