import { connect } from 'react-redux';
import ProfileImageUploadButton from './profile_image_upload_button';
import { updateProfile } from '../../actions/profile_actions';

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
)(ProfileImageUploadButton);
