import {
  RECEIVE_ERRORS_SESSION,
  CLEAR_ERRORS
} from '../actions/errors_actions';
import merge from 'lodash/merge';

const ErrorsReducer = (state = {}, action) => {
  Object.freeze(state);
  switch(action.type) {
    case RECEIVE_ERRORS_SESSION:
      return merge({}, state, { "session": action.errors });
    case CLEAR_ERRORS:
      let newState = merge({}, state);
      delete newState['session'];
      return newState;
    default:
      return state;
  }
};

export default ErrorsReducer;
