class Api::V1::MovieActors < ApplicationController
  def index
    @actors = MovieActor.all
  end

  def show
    @actor = MovieActor.find(params["id"])
  end
end
