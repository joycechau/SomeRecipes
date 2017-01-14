import { connect } from 'react-redux';
import RecipeDetail from './recipe_detail';
import {
  fetchAllRecipes,
  fetchOwnRecipes,
  fetchFavoriteRecipes,
  fetchRecipe,
  createRecipe,
  updateRecipe,
  deleteRecipe
} from '../../actions/recipes_actions';

const mapStateToProps = state => ({
  recipe: state.recipeDetail
});

const mapDispatchToProps = dispatch => ({
  fetchAllRecipes: () => dispatch(fetchAllRecipes()),
  fetchOwnRecipes: () => dispatch(fetchOwnRecipes()),
  fetchFavoriteRecipes: () => dispatch(fetchFavoriteRecipes()),
  fetchRecipe: (id) => dispatch(fetchRecipe(id)),
  createRecipe: (recipe) => dispatch(createRecipe(recipe)),
  updateRecipe: (recipe) => dispatch(updateRecipe()),
  deleteRecipe: (id) => dispatch(deleteRecipe(id))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(RecipeDetail);
