import { connect } from 'react-redux';
import RecipeDetail from './recipe_detail';
import { fetchRecipe } from '../../actions/recipes_actions';

const mapStateToProps = state => ({
  recipe: state.recipeDetail
});

const mapDispatchToProps = dispatch => ({
  fetchRecipe: (id) => dispatch(fetchRecipe(id))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(RecipeDetail);
