json.extract! @recipe, :id, :user_id, :title, :image_url, :user,
  :category, :description, :ingredients, :directions,
  :average_rating


if @recipe.favorite_users.include?(current_user)
  json.favorited true
else
  json.favorited false
end

json.set! :reviews do
  @recipe.reviews.each do |review|
    json.set! review.id do
      json.recipe_id review.recipe_id
      json.user_id review.user_id
      json.rating review.rating
      json.body review.body
    end
  end
end
