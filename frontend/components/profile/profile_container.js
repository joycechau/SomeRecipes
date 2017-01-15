import { connect } from 'react-redux';
import ProfilePage from './profile_page';
import { fetchProfile } from '../../actions/profile_actions';

const mapStateToProps = state => ({
  currentUser: state.currentUser,
  profile: state.profile
});

const mapDispatchToProps = dispatch => ({
  fetchProfile: (username) => dispatch(fetchProfile(username))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(ProfilePage);
