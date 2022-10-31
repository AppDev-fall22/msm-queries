ActorsController < ApplicationController
  def actor_list
    @list_of_actors = Actor.all

    render({ :template => "actors_template/actor_index.html.erb"})
  end

  
end
