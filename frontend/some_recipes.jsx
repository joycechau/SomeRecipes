import React from 'react';
import ReactDOM from 'react-dom';
import Modal from 'react-modal';
import { login, signup, logout } from './actions/session_actions';
import {
  fetchAllRecipes,
  fetchRecipe,
  createRecipe,
  updateRecipe,
  deleteRecipe
} from './actions/recipes_actions';
import Root from './components/root';
import configureStore from './store/store';

document.addEventListener('DOMContentLoaded', () => {
  window.login = login;
  // window.signup = signup;
  // window.logout = logout;
  // const store = configureStore();
  window.fetchAllRecipes = fetchAllRecipes;
  window.fetchRecipe = fetchRecipe;
  window.createRecipe = createRecipe;
  window.updateRecipe = updateRecipe;
  window.deleteRecipe = deleteRecipe;
  let store;
  if (window.currentUser) {
    const preloadedState = { currentUser: window.currentUser };
    store = configureStore(preloadedState);
  } else {
    store = configureStore();
  }
  window.store = store;
  const root = document.getElementById('root');
  Modal.setAppElement("body");
  ReactDOM.render(<Root store={ store }/>, root);
});
