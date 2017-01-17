import { connect } from 'react-redux';
import { createRecipe } from '../../actions/recipes_actions';
import { clearErrors } from '../../actions/errors_actions';
import NewRecipeForm from './new_recipe_form';

const mapStateToProps = state => {
  return {
    errors: state.errors['recipe'],
  };
};

const mapDispatchToProps = dispatch => {
  return {
    createRecipe: (recipe) => dispatch(createRecipe(recipe)),
    clearErrors: () => dispatch(clearErrors())
  };
};

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(NewRecipeForm);
