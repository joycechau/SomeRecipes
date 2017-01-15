import { connect } from 'react-redux';
import AboutMe from './about_me';

const mapStateToProps = state => ({
  profile: state.profile
});

const mapDispatchToProps = dispatch => ({

});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(AboutMe);
