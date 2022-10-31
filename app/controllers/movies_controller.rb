class MoviesController < ApplicationController
  def movie_list
    @list_of_movies = Movie.all

    render({ :template => "movie_template/movie_index.html.erb"})
  end

  def movie_details
    the_id = params.fetch("an_id")

    @the_movie = Movie.where({ :id => the_id}).at(0)

    render({ :template => "movie_template/movie_details.html.erb"})
  end
end
