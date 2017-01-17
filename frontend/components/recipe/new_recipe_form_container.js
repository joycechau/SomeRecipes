import { connect } from 'react-redux';
import NewRecipeForm from './new_recipe_form';
import { createRecipe } from '../../actions/recipes_actions';

const mapStateToProps = state => ({
});

const mapDispatchToProps = dispatch => {
  return {
    createRecipe: (recipe) => dispatch(createRecipe(recipe))
  };
};

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(NewRecipeForm);
