import {
  RECEIVE_ALL_RECIPES,
  RECEIVE_RECIPE,
  REMOVE_RECIPE
} from '../actions/recipes_actions';
import merge from 'lodash/merge';

const RecipesReducer = (state = {}, action) => {
  Object.freeze(state);
  switch(action.type) {
    case RECEIVE_ALL_RECIPES:
      return merge({}, state, action.recipes);
    case RECEIVE_RECIPE:
      return merge({}, state, { [action.recipe.id]: action.recipe} );
    case REMOVE_RECIPE:
      let newState = merge({}, state);
      let recipeId = action.recipe.id;
      delete newState[recipeId];
      return newState;
    default:
      return state;
  }
};

export default RecipesReducer;
