class Api::RecipesController < ApplicationController
  def index
    cloud_name = ENV['CLOUD_NAME']
    upload_preset = Figaro.env.UPLOAD_PRESET
    puts "API KEYS: #{cloud_name} #{upload_preset}"
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.user_id = current_user.id
    if @recipe.save
      render :show
    else
      render json: @recipe.errors.full_messages, status: 422
    end
  end

  def update
    @recipe = current_user.recipes.find(params[:id])
    if @recipe.update(recipe_params)
      render :show
    else
      render json: @recipe.errors.full_messages, status: 422
    end
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    render :show
  end

  private

  def recipe_params
    params.require(:recipe).permit(
      :user_id,
      :title,
      :image_url,
      :category,
      :description,
      ingredients: [],
      directions: []
    )
  end

end
