import {
  RECEIVE_PROFILE,
  CLEAR_PROFILE
 } from '../actions/profile_actions';
import merge from 'lodash/merge';

const defaultProfile = {
  id: "",
  username: "",
  fname: "",
  lname: "",
  profile_url: "",
  interests: "",
  recipes: []
};

const ProfileReducer = (state = defaultProfile, action) => {
  Object.freeze(state);
  switch(action.type) {
    case RECEIVE_PROFILE:
      return action.profile;
    case CLEAR_PROFILE:
      return defaultProfile;
    default:
      return state;
  }
};

export default ProfileReducer;
