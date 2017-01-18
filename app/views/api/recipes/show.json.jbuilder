json.extract! @recipe, :id, :user_id, :title, :image_url, :user,
  :category, :description, :ingredients, :directions,
  :average_rating


if @recipe.favorite_users.include?(current_user)
  json.favorited true
else
  json.favorited false
end
