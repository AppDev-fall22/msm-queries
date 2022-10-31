Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })

  get("/directors", { :controller => "directors", :action => "index"})

  get("/movies", { :controller => "movies", :action => "movie_list"})

  get("/directors/eldest", { :controller => "directors", :action => "wisest"})

  get("/directors/youngest", { :controller => "directors", :action => "dumbest"})

  get("/directors/:an_id", { :controller => "directors", :action => "director_details"})

  get("/movies/:an_id", { :controller => "movies", :action => "movie_details"})

  get("/actors", { :controller => "actors", :action => "actor_list"})

  get("/actors/:an_id", { :controller => "actors", :action => "actor_details"})

  
end
