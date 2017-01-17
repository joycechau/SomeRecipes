import { connect } from 'react-redux';
import AboutMe from './about_me';
import { fetchProfile } from '../../../actions/profile_actions';

const mapStateToProps = state => {
  return {
    currentUser: state.currentUser,
    profile: state.profile
    // recipes: Object.keys(state.profile.recipes).map(id => state.profile.recipes[id])
  };
};

const mapDispatchToProps = dispatch => ({
  fetchProfile: (username) => dispatch(fetchProfile(username))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(AboutMe);
