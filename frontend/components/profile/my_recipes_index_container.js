import { connect } from 'react-redux';
import MyRecipesIndex from './my_recipes_index';
import { fetchProfile } from '../../actions/profile_actions';
import { fetchOwnRecipes } from '../../actions/recipes_actions';

const mapStateToProps = state => {
  return {
    currentUser: state.currentUser,
    profile: state.profile,
    recipes: Object.keys(state.recipes).map(id => state.recipes[id])
  };
};

const mapDispatchToProps = dispatch => ({
  fetchProfile: (username) => dispatch(fetchProfile(username)),
  fetchOwnRecipes: () => dispatch(fetchOwnRecipes())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(MyRecipesIndex);
