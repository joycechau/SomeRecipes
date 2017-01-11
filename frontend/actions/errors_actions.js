import * as APIUtil from '../util/session_api_util';
export const RECEIVE_ERRORS_SESSION = 'RECEIVE_ERRORS_SESSION';

export const receiveErrorsSession = (errors) => ({
  type: RECEIVE_ERRORS_SESSION,
  errors
});
