import {
  RECEIVE_ERRORS_SESSION,
  RECEIVE_ERRORS_RECIPE,
  CLEAR_ERRORS
} from '../actions/errors_actions';
import merge from 'lodash/merge';

const ErrorsReducer = (state = {}, action) => {
  Object.freeze(state);
  switch(action.type) {
    case RECEIVE_ERRORS_SESSION:
      return merge({}, state, { "session": action.errors });
    case RECEIVE_ERRORS_RECIPE:
      return merge({}, state, { "recipe": action.errors });
    case CLEAR_ERRORS:
      return {};
    default:
      return state;
  }
};

export default ErrorsReducer;
