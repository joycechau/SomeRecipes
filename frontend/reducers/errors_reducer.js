import {
  RECEIVE_ERRORS_SIGNUP,
  RECEIVE_ERRORS_LOGIN
} from '../actions/errors_actions';
import merge from 'lodash/merge';

const ErrorsReducer = (state = {}, action) => {
  Object.freeze(state);
  switch(action.type) {
    case RECEIVE_ERRORS_SIGNUP:
      return merge({}, state, { "signUp": action.errors });
    case RECEIVE_ERRORS_LOGIN:
      return merge({}, state, { "logIn": action.errors });
    default:
      return state;
  }
};

export default ErrorsReducer;
