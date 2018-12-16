class Admin::V1::MovieDirectorsController < ApplicationController
  before_action :set_director, only: [:update, :destroy]

  def create
    @director = MovieDirector.create!(movie_director_params)
  end

  def update
    @director.update!
  end

  def destroy
    @director.destroy!
  end

  private

    def movie_director_params
      params.require(:movie_director).permit(:movie_id, :cast_id)
    end

    def set_director
      @director = MovieDirector.find(params[:id])
    end

end
