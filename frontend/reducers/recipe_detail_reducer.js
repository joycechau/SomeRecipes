import {
  RECEIVE_RECIPE,
  CLEAR_RECIPE,
  REMOVE_RECIPE
} from '../actions/recipes_actions';
import merge from 'lodash/merge';

const defaultRecipeDetail = {
  user_id: "",
  title: "",
  description: "",
  category: "",
  image_url: "",
  ingredients: [],
  directions: []
};

const RecipeDetailReducer = (state = defaultRecipeDetail, action) => {
  Object.freeze(state);
  switch(action.type) {
    case RECEIVE_RECIPE:
      return action.recipe;
    case REMOVE_RECIPE:
      return {};
    default:
      return state;
  }
};

export default RecipeDetailReducer;
