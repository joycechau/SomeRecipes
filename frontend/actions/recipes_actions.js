import * as APIUtil from '../util/recipe_api_util';
import { hashHistory } from 'react-router';

export const RECEIVE_ALL_RECIPES = "RECEIVE_ALL_RECIPES";
export const RECEIVE_RECIPE = "RECEIVE_RECIPE";
export const REMOVE_RECIPE = "REMOVE_RECIPE";

export const fetchRecipes = () => dispatch => (
  APIUtil.fetchRecipes()
    .then(recipes => dispatch(receiveAllRecipes(recipes)))
);

export const fetchRecipe = (id) => (dispatch) => (
  APIUtil.fetchRecipe(id)
    .then(recipe => dispatch(receiveRecipe(recipe)))
);

export const createRecipe = (data) => (dispatch) => (
  APIUtil.createRecipe(data)
    .then(recipe => dispatch(receiveRecipe(recipe)))
);

export const updateRecipe = (data) => (dispatch) => (
  APIUtil.updateRecipe(data)
    .then(recipe => dispatch(receiveRecipe(recipe)))

);

export const deleteRecipe = (data) => (dispatch) => (
  APIUtil.deleteRecipe(data)
    .then(recipe => dispatch(removeRecipe(recipe)))
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
