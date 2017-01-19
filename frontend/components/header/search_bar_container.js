import { connect } from 'react-redux';
import { fetchAllRecipes } from '../../actions/recipes_actions';
import SearchBar from './search_bar';

const mapStateToProps = (state) => {
  return {
  };
};

const mapDispatchToProps = (dispatch) => ({
  fetchAllRecipes: (search) => dispatch(fetchAllRecipes(search))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(SearchBar);
