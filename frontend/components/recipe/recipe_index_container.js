import { connect } from 'react-redux';
import RecipeIndex from './recipe_index';
import {
  fetchAllRecipes,
  clearAllRecipes
} from '../../actions/recipes_actions';

const mapStateToProps = state => ({
  recipes: Object.keys(state.recipes).map(id => state.recipes[id]),
  currentUser: state.currentUser
});

const mapDispatchToProps = dispatch => ({
  fetchAllRecipes: () => dispatch(fetchAllRecipes()),
  clearAllRecipes: () => dispatch(clearAllRecipes())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(RecipeIndex);
