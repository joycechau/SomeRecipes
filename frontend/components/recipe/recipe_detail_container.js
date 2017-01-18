import { connect } from 'react-redux';
import RecipeDetail from './recipe_detail';
import {
  fetchRecipe,
  clearAllRecipes,
  updateRecipe,
  deleteRecipe
} from '../../actions/recipes_actions';

const mapStateToProps = state => ({
  currentUser: state.currentUser,
  recipe: state.recipeDetail
});

const mapDispatchToProps = dispatch => ({
  fetchRecipe: (id) => dispatch(fetchRecipe(id)),
  clearAllRecipes: () => dispatch(clearAllRecipes()),
  updateRecipe: (recipe) => dispatch(updateRecipe(recipe)),
  deleteRecipe: (id) => dispatch(deleteRecipe(id))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(RecipeDetail);
