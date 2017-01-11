import React from 'react';
import ReactDOM from 'react-dom';
import { login, signup, logout } from './actions/session_actions';
import Root from './components/root';
import configureStore from './store/store';

document.addEventListener('DOMContentLoaded', () => {
  window.login = login;
  window.signup = signup;
  window.logout = logout;
  const store = configureStore();
  window.store = store;
  const root = document.getElementById('root');
  ReactDOM.render(<Root store={ store }/>, root);
});
