class Api::V1::UsersController < ApplicationController
  def index
    @users = User.all
    render json: { status: 200, data: @users }
  end
end
