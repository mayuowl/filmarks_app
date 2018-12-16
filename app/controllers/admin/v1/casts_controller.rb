class Admin::V1::CastsController < ApplicationController
  before_action :set_cast, only: [:update, :destroy]

  def create
    @cast = Cast.create!(cast_params)
  end

  def update
    @cast = update!(cast_params)
  end

  def destroy
    @cast.destroy!
  end

  private

    def set_cast
      @cast = Cast.find(params[:id])
    end

    def cast_params
      params.require(:cast).permit(:name)
    end

end
