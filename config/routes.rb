Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  GET "/movies", to: "movies#index", as: "movies"  
  POST "/movies", to: "movies#create"
  GET "/movies/new", to: "movies#new", as: "new_movie"
  GET "/movies/:id", to: "movies#show", as: "movie"
end
