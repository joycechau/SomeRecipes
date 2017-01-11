import { connect } from 'react-redux';
import { logout, login } from '../../actions/session_actions';
import Header from './header';

const mapStateToProps = ({ currentUser }) => ({
  currentUser: currentUser
});

const mapDispatchToProps = (dispatch) => ({
  logout: () => dispatch(logout()),
  login: (user) => dispatch(login(user))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Header);
