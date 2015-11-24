class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all
  end
  
  def update
    @user = User.find_by_id(params[:id])
    if @user.nil?
      render json: { message: "Cannot find user" }, status: :not_found
    else
      @user.update(user_params)
    end
  end

  def show
    @user = User.find_by_id(params[:id])

    if @user.nil?
      render json: { message: "Cannot find user" }, status: :not_found
    end
  end

  def destroy
    @user = User.find_by_id(params[:id])

    if @user.nil?
      render json: { message: "Cannot find user" }, status: :not_found
    else
      if @user.destroy
        render json: { message: "Successfully deleted" }, status: :no_content
      else
        render json: { message: "Unsuccessfully deleted" }, status: :bad_request 
      end
    end
  end


  private

  def user_params
    params.require(:user).permit(:name, :username, :email, :country :registration)
  end
end