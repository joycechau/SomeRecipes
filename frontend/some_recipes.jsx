import React from 'react';
import ReactDOM from 'react-dom';
import { login, signup, logout } from './actions/session_actions';
import configureStore from './store/store';

document.addEventListener('DOMContentLoaded', () => {
  window.login = login;
  window.signup = signup;
  window.logout = logout;
  window.store = configureStore();
  const root = document.getElementById('root');
  ReactDOM.render(<h1>SomeRecipes</h1>, root);
});
