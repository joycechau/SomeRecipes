import { connect } from 'react-redux';
import { signup, login } from '../../actions/session_actions';
import { clearErrors } from '../../actions/errors_actions';
import { hashHistory } from 'react-router';
import SessionForm from './session_form';

const mapStateToProps = ({ currentUser, errors }, ownProps) => {
  return {
    loggedIn: currentUser ? true : false,
    errors: errors['session'],
    formType: ownProps.formType
  };
};

const mapDispatchToProps = (dispatch, ownProps) => {
  return {
    signup: (user) => dispatch(signup(user)),
    login: (user) => dispatch(login(user)),
    clearErrors: () => dispatch(clearErrors())
  };
};

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(SessionForm);
