import { combineReducers } from 'redux';
import SessionReducer from './session_reducer';
import ErrorsReducer from './errors_reducer';
import RecipesReducer from './recipes_reducer';
import RecipeDetailReducer from './recipe_detail_reducer';
import ProfileReducer from './profile_reducer';

export const rootReducer = combineReducers({
  currentUser: SessionReducer,
  profile: ProfileReducer,
  errors: ErrorsReducer,
  recipes: RecipesReducer,
  recipeDetail: RecipeDetailReducer
});

export default rootReducer;
