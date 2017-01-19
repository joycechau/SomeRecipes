import { connect } from 'react-redux';
import { fetchAllRecipes } from '../../actions/recipes_actions';
import SearchResultsIndex from './search_results_index';

const mapStateToProps = (state) => {
  return {
    recipes: Object.keys(state.recipes).map(id => state.recipes[id])
  };
};

const mapDispatchToProps = (dispatch) => {
  return {
    fetchAllRecipes: (search) => dispatch(fetchAllRecipes(search))
  };
};

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(SearchResultsIndex);
