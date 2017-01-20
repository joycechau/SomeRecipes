class Api::ReviewsController < ApplicationController

  def create
    @review = Review.new(review_params)
    if @review.save
      @recipe = Recipe.find(@review.recipe_id)
      render 'api/recipes/show'
    else
      render json: @review.errors.full_messages, status: 422
    end
  end

  def show
    @review = Review.find_by({
      recipe_id: params[:id],
      user_id: current_user.id
      })
    @recipe = Recipe.find(params[:id])
    render 'api/recipes/show'
  end

  def update
    @review = Review.find_by({
      recipe_id: params[:id],
      user_id: current_user.id
      })
    if @review.update(review_params)
      @recipe = Recipe.find(@review.recipe_id)
      render 'api/recipes/show'
    else
      render json: @review.errors.full_messages, status: 422
    end
  end

  def destroy
    @review = Review.find_by({
      recipe_id: params[:id],
      user_id: current_user.id
      })
    @review.destroy
    @recipe = Recipe.find(params[:id])
    render 'api/recipes/show'
  end

  private

  def review_params
    params.require(:review).permit(:rating, :body, :user_id, :recipe_id)
  end
end
