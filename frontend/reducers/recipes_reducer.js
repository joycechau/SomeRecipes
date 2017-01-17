import {
  RECEIVE_ALL_RECIPES,
  CLEAR_ALL_RECIPES,
  RECEIVE_RECIPE,
  REMOVE_RECIPE
} from '../actions/recipes_actions';
import merge from 'lodash/merge';

const RecipesReducer = (state = {}, action) => {
  Object.freeze(state);
  let newState = merge({}, state);
  switch(action.type) {
    case RECEIVE_ALL_RECIPES:
      return action.recipes;
    case CLEAR_ALL_RECIPES:
      return {};
    case RECEIVE_RECIPE:
      let recipeId = action.recipe.id;
      newState[recipeId] = action.recipe;
      return newState;
    case REMOVE_RECIPE:
      delete newState[recipeId];
      return newState;
    default:
      return state;
  }
};

export default RecipesReducer;
