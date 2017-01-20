import { connect } from 'react-redux';
import { createReview } from '../../actions/recipes_actions';
import { clearErrors } from '../../actions/errors_actions';
import NewReviewForm from './new_review_form.jsx';

const mapStateToProps = state => {
  return {
    errors: state.errors['review'],
  };
};

const mapDispatchToProps = dispatch => {
  return {
    createReview: (review) => dispatch(createReview(review)),
    clearErrors: () => dispatch(clearErrors())
  };
};

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(NewReviewForm);
