import * as APIUtil from '../util/recipe_api_util';
import { receiveErrorsRecipe } from './errors_actions';
import { hashHistory } from 'react-router';

export const RECEIVE_ALL_RECIPES = "RECEIVE_ALL_RECIPES";
export const RECEIVE_RECIPE = "RECEIVE_RECIPE";
export const REMOVE_RECIPE = "REMOVE_RECIPE";
export const CLEAR_ALL_RECIPES = "CLEAR_ALL_RECIPES";

export const fetchAllRecipes = () => dispatch => (
  APIUtil.fetchAllRecipes()
    .then(recipes => dispatch(receiveAllRecipes(recipes)))
);

export const fetchOwnRecipes = () => dispatch => (
  APIUtil.fetchOwnRecipes()
    .then(recipes => dispatch(receiveAllRecipes(recipes)))
);

export const fetchFavoriteRecipes = () => dispatch => (
  APIUtil.fetchFavoriteRecipes()
    .then(recipes => dispatch(receiveAllRecipes(recipes)))
);

export const fetchRecipe = (id) => (dispatch) => (
  APIUtil.fetchRecipe(id)
    .then(recipe => dispatch(receiveRecipe(recipe)))
);

export const createRecipe = (data) => (dispatch) => (
  APIUtil.createRecipe(data)
    .then(recipe => dispatch(receiveRecipe(recipe)))
    .fail(errors => dispatch(receiveErrorsRecipe(errors.responseJSON)))
);

export const updateRecipe = (data) => (dispatch) => (
  APIUtil.updateRecipe(data)
    .then(recipe => dispatch(receiveRecipe(recipe)))
    .fail(errors => dispatch(receiveErrorsRecipe(errors.responseJSON)))
);

export const deleteRecipe = (data) => (dispatch) => (
  APIUtil.deleteRecipe(data)
    .then(recipe => dispatch(removeRecipe(recipe)))
);

export const createFavorite = (data) => (dispatch) => (
  APIUtil.createFavorite(data)
    .then(recipe => dispatch(receiveRecipe(recipe)))
);

export const deleteFavorite = (data) => (dispatch) => (
  APIUtil.deleteFavorite(data)
    .then(recipe => dispatch(receiveRecipe(recipe)))
);

const receiveAllRecipes = recipes => ({
  type: RECEIVE_ALL_RECIPES,
  recipes
});

const receiveRecipe = recipe => ({
  type: RECEIVE_RECIPE,
  recipe
});

const removeRecipe = recipe => ({
  type: REMOVE_RECIPE,
  recipe
});

export const clearAllRecipes = () => ({
  type: CLEAR_ALL_RECIPES
});
