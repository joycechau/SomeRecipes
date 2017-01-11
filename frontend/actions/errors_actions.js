import * as APIUtil from '../util/session_api_util';
export const RECEIVE_ERRORS_SESSION = 'RECEIVE_ERRORS_SESSION';
export const CLEAR_ERRORS = 'CLEAR_ERRORS';

export const receiveErrorsSession = (errors) => ({
  type: RECEIVE_ERRORS_SESSION,
  errors
});

export const clearErrors = () => ({
  type: CLEAR_ERRORS
});
