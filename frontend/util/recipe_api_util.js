export const fetchAllRecipes = (searchParams) => {
  return (
    $.ajax({
      method: 'GET',
      url: 'api/recipes',
      data: { searchParams },
      headers: { 'Access-Control-Allow-Origin':'*' }
    })
  );
};

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
};

export const createReview = (review) => {
  return (
    $.ajax({
      method: 'POST',
      url: 'api/reviews',
      data: { review }
    })
  );
};

export const fetchReview = (review) => {
  return (
    $.ajax({
      method: 'GET',
      url: `api/reviews/${review.recipe_id}`
    })
  );
};

export const updateReview = (review) => {
  return (
    $.ajax({
      method: 'PATCH',
      url: `api/reviews/${review.recipe_id}`,
      data: { review }
    })
  );
};

export const deleteReview = (review) => {
  return (
    $.ajax({
      method: 'DELETE',
      url: `api/reviews/${review.recipe_id}`,
      data: { review }
    })
  );
};
