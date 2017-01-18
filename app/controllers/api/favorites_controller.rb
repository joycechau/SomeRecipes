class Api::FavoritesController < ApplicationController

  def create
    @favorite = Favorite.new(favorite_params)
    @favorite.user_id = current_user.id
    if @favorite.save
      render 'api/recipes/show'
    else
      render json: @favorite.errors.full_messages, status: 422
    end
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.destroy
    render 'api/recipes/show'
  end

  private

  def favorite_params
    params.require(:favorite).permit(:user_id, :recipe_id)
  end
end
