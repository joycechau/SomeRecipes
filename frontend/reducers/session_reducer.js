import { RECEIVE_CURRENT_USER } from '../actions/session_actions';
import merge from 'lodash/merge';

const SessionReducer = (state = null, action) => {
  Object.freeze(state);
  console.log(action);
  console.log(action.currentUser);
  switch(action.type) {
    case RECEIVE_CURRENT_USER:
      const currentUser = action.currentUser;
      return merge({}, state, currentUser );
    default:
      return state;
  }
};

export default SessionReducer;
