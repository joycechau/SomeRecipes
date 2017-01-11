import * as APIUtil from '../util/session_api_util';
export const RECEIVE_CURRENT_USER = 'RECEIVE_CURRENT_USER';
export const RECEIVE_ERRORS_SIGNUP = 'RECEIVE_ERRORS_SIGNUP';
export const RECEIVE_ERRORS_LOGIN = 'RECEIVE_ERRORS_LOGIN';

export const receiveCurrentUser = (currentUser) => ({
  type: RECEIVE_CURRENT_USER,
  currentUser
});

export const receiveErrorsSignUp = (errors) => ({
  type: RECEIVE_ERRORS_SIGNUP,
  errors
});

export const receiveErrorsLogIn = (errors) => ({
  type: RECEIVE_ERRORS_LOGIN,
  errors
});
