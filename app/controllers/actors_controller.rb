class ActorsController < ApplicationController
  def actor_list
    @list_of_actors = Actor.all

    render({ :template => "actors_template/actor_index.html.erb"})
  end

  def actor_details
    the_id = params.fetch("an_id")

    @the_actor = Actor.where({ :id => the_id}).at(0)
    @filmography = Character.where( :actor_id => the_id)

    render({ :template => "actors_template/actor_detail.html.erb"})
  end
end
