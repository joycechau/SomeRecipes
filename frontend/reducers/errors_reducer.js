import { RECEIVE_ERRORS_SESSION } from '../actions/errors_actions';
import merge from 'lodash/merge';

const ErrorsReducer = (state = {}, action) => {
  Object.freeze(state);
  switch(action.type) {
    case RECEIVE_ERRORS_SESSION:
      return merge({}, state, { "session": action.errors });
    default:
      return state;
  }
};

export default ErrorsReducer;
