import { connect } from 'react-redux';
import FavoriteRecipesIndex from './favorite_recipes_index';
import { fetchFavoriteRecipes } from '../../../actions/recipes_actions';

const mapStateToProps = state => ({
  currentUser: state.currentUser,
  recipes: Object.keys(state.recipes).map(id => state.recipes[id])
});

const mapDispatchToProps = dispatch => ({
  fetchFavoriteRecipes: () => dispatch(fetchFavoriteRecipes())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(FavoriteRecipesIndex);
