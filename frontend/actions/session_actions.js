import * as APIUtil from '../util/session_api_util';
import { receiveErrorsSession } from './errors_actions';
import { hashHistory } from 'react-router';
export const RECEIVE_CURRENT_USER = 'RECEIVE_CURRENT_USER';

export const signup = (user) => (dispatch) => (
  APIUtil.signup(user)
    .then(currentUser => dispatch(receiveCurrentUser(currentUser)))
    .fail(errors => dispatch(receiveErrorsSession(errors.responseJSON)))
);

export const login = (user) => (dispatch) => (
  APIUtil.login(user)
    .then(currentUser => dispatch(receiveCurrentUser(currentUser)))
    .fail(errors => dispatch(receiveErrorsSession(errors.responseJSON)))
);

export const logout = () => (dispatch) => (
  APIUtil.logout()
    .then(() => dispatch(receiveCurrentUser(null)))
);

export const receiveCurrentUser = (currentUser) => ({
  type: RECEIVE_CURRENT_USER,
  currentUser
});
