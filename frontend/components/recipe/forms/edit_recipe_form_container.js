import { connect } from 'react-redux';
import {
  updateRecipe,
  fetchRecipe
} from '../../../actions/recipes_actions';
import { clearErrors } from '../../../actions/errors_actions';
import EditRecipeForm from './edit_recipe_form.jsx';

const mapStateToProps = (state, ownProps) => {
  return {
    recipe: state.recipeDetail,
    errors: state.errors['recipe']
  };
};

const mapDispatchToProps = dispatch => {
  return {
    updateRecipe: (recipe) => dispatch(updateRecipe(recipe)),
    fetchRecipe: (id) => dispatch(fetchRecipe(id)),
    clearErrors: () => dispatch(clearErrors())
  };
};

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(EditRecipeForm);
