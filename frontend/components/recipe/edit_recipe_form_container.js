import { connect } from 'react-redux';
import EditRecipeForm from './edit_recipe_form';
// import { fetchRecipe } from '../../actions/recipes_actions';

const mapStateToProps = state => ({
  // recipe: state.recipeDetail
});

const mapDispatchToProps = dispatch => ({
  // fetchRecipe: (id) => dispatch(fetchRecipe(id))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(EditRecipeForm);
