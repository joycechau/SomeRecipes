import { connect } from 'react-redux';
import RecipeIndex from './recipe_index';
import {
  fetchAllRecipes,
  fetchOwnRecipes,
  fetchFavoriteRecipes
} from '../../actions/recipes_actions';

const mapStateToProps = state => ({
  recipes: Object.keys(state.recipes).map(id => state.recipes[id]),
  currentUser: state.currentUser
});

const mapDispatchToProps = dispatch => ({
  fetchAllRecipes: () => dispatch(fetchAllRecipes()),
  fetchOwnRecipes: () => dispatch(fetchOwnRecipes()),
  fetchFavoriteRecipes: () => dispatch(fetchFavoriteRecipes())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(RecipeIndex);
