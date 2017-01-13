import {
  RECEIVE_RECIPE,
  REMOVE_RECIPE
} from '../actions/recipes_actions';
import merge from 'lodash/merge';

const RecipeDetailReducer = (state = {}, action) => {
  Object.freeze(state);
  switch(action.type) {
    case RECEIVE_RECIPE:
      let recipe = action.recipe;
      return merge({}, state, recipe);
    case REMOVE_RECIPE:
      return {};
    default:
      return state;
  }
};

export default RecipeDetailReducer;