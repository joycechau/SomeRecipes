import { RECEIVE_CURRENT_USER } from '../actions/session_actions';
import merge from 'lodash/merge';

const SessionReducer = (state = null, action) => {
  Object.freeze(state);
  switch(action.type) {
    case RECEIVE_CURRENT_USER:
      return action.currentUser;
    default:
      return state;
  }
};

export default SessionReducer;
