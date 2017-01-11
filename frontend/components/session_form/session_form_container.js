import { connect } from 'react-redux';
import { signup, login } from '../../actions/session_actions';
import SessionForm from './session_form';

const mapStateToProps = ({ currentUser, errors }, ownProps) => ({
  loggedIn: currentUser ? true : false,
  errors: errors['session'],
  formType: ownProps.location.pathname === '/signup' ? 'signup' : 'login'
});

const mapDispatchToProps = (dispatch, ownProps) => {
  const formType = ownProps.location.pathname === '/signup' ? 'signup' : 'login';
  const action = formType === 'signup' ? signup : login;
  return {
    processForm: (user) => dispatch(action(user))
  };
};

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(SessionForm);
