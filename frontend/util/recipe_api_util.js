export const fetchAllRecipes = () => (
  $.ajax({
    method: 'GET',
    url: 'api/recipes'
  })
);

export const fetchRecipe = (id) => (
  $.ajax({
    method: 'GET',
    url: `api/recipes/${id}`
  })
);

export const createRecipe = (recipe) => {
  return (
    $.ajax({
      method: 'POST',
      url: 'api/recipes',
      data: { recipe }
    })
  );
};

export const updateRecipe = (recipe) => {
  return (
    $.ajax({
      method: 'PATCH',
      url: `api/recipes/${recipe.id}`,
      data: { recipe }
    })
  );
};

export const deleteRecipe = (id) => (
  $.ajax({
    method: 'DELETE',
    url: `api/recipes/${id}`
  })
);

export const fetchOwnRecipes = () => (
  $.ajax({
    method: 'GET',
    url: 'api/own_recipes'
  })
);

export const fetchFavoriteRecipes = () => (
  $.ajax({
    method: 'GET',
    url: 'api/favorite_recipes'
  })
);

export const createFavorite = (favorite) => {
  return (
    $.ajax({
      method: 'POST',
      url: 'api/favorites',
      data: { favorite }
    })
  );
};

export const deleteFavorite = (favorite) => {
  return (
    $.ajax({
      method: 'DELETE',
      url: `api/favorites/${favorite.recipe_id}`,
      data: { favorite }
    })
  );
}
