import { combineReducers } from 'redux';
import SessionReducer from './session_reducer';
import ErrorsReducer from './errors_reducer';

export const rootReducer = combineReducers({
  currentUser: SessionReducer,
  errors: ErrorsReducer
});

export default rootReducer;
