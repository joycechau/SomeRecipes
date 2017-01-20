import { connect } from 'react-redux';
import ReviewIndex from './review_index';
import {
  fetchRecipe,
  createReview,
  fetchReview,
  updateReview,
  deleteReview
} from '../../actions/recipes_actions';
import { clearErrors } from '../../actions/errors_actions';

const mapStateToProps = state => {
  if (state.recipeDetail.reviews) {
    return {
      currentUser: state.currentUser,
      recipe: state.recipeDetail,
      reviews: Object.keys(state.recipeDetail.reviews).map(
        id => state.recipeDetail.reviews[id]
      )
    };
  } else {
    return {
      currentUser: state.currentUser,
      recipe: state.recipeDetail,
      reviews: []
    };
  }
};

const mapDispatchToProps = dispatch => ({
  fetchRecipe: (id) => dispatch(fetchRecipe(id)),
  createReview: (data) => dispatch(createReview(data)),
  fetchReview: (data) => dispatch(fetchReview(data)),
  updateReview: (data) => dispatch(updateReview(data)),
  deleteReview: (data) => dispatch(deleteReview(data)),
  clearErrors: () => dispatch(clearErrors())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(ReviewIndex);
