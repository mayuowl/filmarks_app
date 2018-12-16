class Admin::V1::MovieActors < ApplicationController
  before_action :set_actor, only: [:update, :destroy]

  def create
    @actor = MovieActor.create!(actor_params)
  end

  def update
    @actor.update!(set_actor)
  end

  def destroy
    @actor.destroy!
  end

  private

    def actor_params
      params.require(:movie_actor).permit(:movie_id, :cast_id)
    end

    def set_actor
      @actor = MovieActor.find(params[:id])
    end

end
