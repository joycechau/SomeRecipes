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

export const createRecipe = (recipe) => (
  $.ajax({
    method: 'POST',
    url: 'api/recipes',
    data: { recipe }
  })
);

export const updateRecipe = (recipe) => (
  $.ajax({
    method: 'PATCH',
    url: `api/recipes/${recipe.id}`,
    data: { recipe }
  })
);

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
