class RolesController < ApplicationController
  def index
    matching_roles = Role.all

    @list_of_roles = matching_roles.order({ :created_at => :desc })

    render({ :template => "roles/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_roles = Role.where({ :id => the_id })

    @the_role = matching_roles.at(0)

    render({ :template => "roles/show.html.erb" })
  end

  def create
    the_role = Role.new
    the_role.movie_id = params.fetch("query_movie_id")
    the_role.actor_id = params.fetch("query_actor_id")

    if the_role.valid?
      the_role.save
      redirect_to("/roles", { :notice => "Role created successfully." })
    else
      redirect_to("/roles", { :notice => "Role failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_role = Role.where({ :id => the_id }).at(0)

    the_role.movie_id = params.fetch("query_movie_id")
    the_role.actor_id = params.fetch("query_actor_id")

    if the_role.valid?
      the_role.save
      redirect_to("/roles/#{the_role.id}", { :notice => "Role updated successfully."} )
    else
      redirect_to("/roles/#{the_role.id}", { :alert => "Role failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_role = Role.where({ :id => the_id }).at(0)

    the_role.destroy

    redirect_to("/roles", { :notice => "Role deleted successfully."} )
  end
end
