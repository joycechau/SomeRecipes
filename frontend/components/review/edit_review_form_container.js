import { connect } from 'react-redux';
import {
  updateReview,
  fetchReview
} from '../../actions/recipes_actions';
import { clearErrors } from '../../actions/errors_actions';
import EditReviewForm from './edit_review_form.jsx';

const mapStateToProps = (state, ownProps) => {
  return {
    errors: state.errors['review']
  };
};

const mapDispatchToProps = dispatch => {
  return {
    updateReview: (review) => dispatch(updateReview(review)),
    fetchReview: (id) => dispatch(fetchReview(id)),
    clearErrors: () => dispatch(clearErrors())
  };
};

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(EditReviewForm);
