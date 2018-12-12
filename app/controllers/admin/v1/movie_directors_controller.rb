class Admin::V1::MovieDirectorsController < ApplicationController
  before_action :set_director, only: [:update, :destroy]

  def create
    @director = MovieDirector.create!
  end

  def update
    @director.update!
  end

  def destroy
    @director.destroy!
  end

  private

    def set_director
      @director = MovieDirector.find(params[:id])
    end

end
