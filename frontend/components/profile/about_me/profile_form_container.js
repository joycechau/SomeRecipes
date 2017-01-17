import { connect } from 'react-redux';
import ProfileForm from './profile_form';
import { updateProfile } from '../../../actions/profile_actions';

const mapStateToProps = state => ({
  currentUser: state.currentUser,
  profile: state.profile
});

const mapDispatchToProps = dispatch => ({
  updateProfile: (user) => dispatch(updateProfile(user))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(ProfileForm);
