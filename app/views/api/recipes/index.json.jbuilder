@recipes.each do |recipe|
  json.set! recipe.id do
    json.partial! 'recipe', recipe: recipe
  end
end
