import * as APIUtil from '../util/profile_api_util';
export const RECEIVE_PROFILE = 'RECEIVE_PROFILE';

export const fetchProfile = (username) => (dispatch) => (
  APIUtil.fetchProfile(username)
    .then(profile => dispatch(receiveProfile(profile)))
);

export const receiveProfile = (profile) => ({
  type: RECEIVE_PROFILE,
  profile
});
