class Api::UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    if @user.save
      login(@user)
      render :show
    else
      render json: @user.errors.full_messages, status: 422
    end

    def show
      @user = User.find(params[:id])
    end

    def update
      @user = User.find(params[:id])
      @user.update
      render :show
    end
  end

  private

  def user_params
    params.require(:user).permit(
      :username,
      :password,
      :fname,
      :lname,
      :profile_url,
      :interests
    )
  end
end
