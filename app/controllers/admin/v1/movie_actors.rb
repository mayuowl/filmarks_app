class Admin::V1::MovieActors < ApplicationController
  before_action :set_actor, only: [:update, :destroy]

  def create
    @actor = MovieActor.create!(set_actor)
  end

  def update
    @actor.update!(set_actor)
  end

  def destroy
    @actor.destroy!
  end

  private

    def set_actor
      @actor = MovieActor.find(params[:id])
    end

end
