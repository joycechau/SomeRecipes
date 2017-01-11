import * as APIUtil from '../util/session_api_util';
import {
  receiveErrorsSignUp,
  receiveErrorsLogIn
} from './errors_actions';
export const RECEIVE_CURRENT_USER = 'RECEIVE_CURRENT_USER';
export const RECEIVE_ERRORS = 'RECEIVE_ERRORS';

export const signup = (user) => (dispatch) => (
  APIUtil.signup(user)
    .then(currentUser => dispatch(receiveCurrentUser(currentUser)))
    .fail(errors => dispatch(receiveErrorsSignUp(errors.responseJSON)))
);

export const login = (user) => (dispatch) => (
  APIUtil.login(user)
    .then(currentUser => dispatch(receiveCurrentUser(currentUser)))
    .fail(errors => dispatch(receiveErrorsLogIn(errors.responseJSON)))
);

export const logout = () => (dispatch) => (
  APIUtil.logout()
    .then(() => dispatch(receiveCurrentUser(null)))
);

export const receiveCurrentUser = (currentUser) => ({
  type: RECEIVE_CURRENT_USER,
  currentUser
});
