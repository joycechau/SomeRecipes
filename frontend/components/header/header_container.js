import { connect } from 'react-redux';
import { logout, login } from '../../actions/session_actions';
import { clearErrors } from '../../actions/errors_actions';

import Header from './header';

const mapStateToProps = ({ currentUser }, ownProps) => {
  return {
    currentUser: currentUser,
    location: ownProps.location
  };
};

const mapDispatchToProps = (dispatch) => ({
  logout: () => dispatch(logout()),
  login: (user) => dispatch(login(user)),
  clearErrors: () => dispatch(clearErrors())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Header);
