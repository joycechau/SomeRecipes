import { connect } from 'react-redux';
import { signup, login } from '../../actions/session_actions';
import { clearErrors } from '../../actions/errors_actions';
import { hashHistory } from 'react-router';
import SessionForm from './session_form';

const mapStateToProps = ({ currentUser, errors }, ownProps) => {
  console.log(ownProps);
  return {
    loggedIn: currentUser ? true : false,
    errors: errors['session'],
    formType: ownProps.formType
  };
};

const mapDispatchToProps = (dispatch, ownProps) => {
  // console.log(ownProps);
  const action = ownProps.formType === 'login' ? login : signup;
  return {
    processForm: (user) => dispatch(action(user)),
    clearErrors: () => dispatch(clearErrors())
  };
};

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(SessionForm);
