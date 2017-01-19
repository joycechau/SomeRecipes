class Api::FavoritesController < ApplicationController

  def create
    @favorite = Favorite.new(favorite_params)
    if @favorite.save
      @recipe = Recipe.find(@favorite.recipe_id)
      render 'api/recipes/show'
    else
      render json: @favorite.errors.full_messages, status: 422
    end
  end

  def destroy
    @favorite = Favorite.find_by({
      recipe_id: params[:id],
      user_id: current_user.id
      })
    @favorite.destroy
    @recipe = Recipe.find(params[:id])
    render 'api/recipes/show'
  end

  private

  def favorite_params
    params.require(:favorite).permit(:user_id, :recipe_id)
  end
end
