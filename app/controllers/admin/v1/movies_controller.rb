class Admin::V1::MoviesController < ApplicationController
  def create
    binding.pry
    @movie = Movie.create!(movie_params)
    render json: { status: 204, data: {} }
  end

  def update
  end

  def destroy
  end

  private

    def movie_params
      params.require(:movie).permit(:title)
    end

end
