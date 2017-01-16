import { connect } from 'react-redux';
import MyRecipesIndex from './my_recipes_index';

const mapStateToProps = state => ({
  currentUser: state.currentUser,
  recipes: Object.keys(state.currentUser.recipes).map(id => state.currentUser.recipes[id])
});

const mapDispatchToProps = dispatch => ({

});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(MyRecipesIndex);
