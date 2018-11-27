class Admin::V1::CastsController < ApplicationController
  def create
    @cast = Cast.create!(cast_params)
  end

  def update
    @cast = Cast.find!(params[:id])
    @cast = update!(cast_params)
  end

  def destroy
    @cast = Cast.find(params[:id])
    @cast.destroy!
  end

  private

    def cast_params
      params.require(:cast).permit(:name)
    end
end
