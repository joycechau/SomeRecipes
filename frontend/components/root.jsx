import React from 'react';
import { Provider } from 'react-redux';
import { Router, Route, IndexRoute, IndexRedirect, hashHistory } from 'react-router';
import App from './app';
import RecipeIndexContainer from './recipe/recipe_index_container';
import RecipeDetailContainer from './recipe/recipe_detail_container';
import HomeContainer from './home/home_container.js';

const Root = ({ store }) => {
  const _redirectIfLoggedIn = (nextState, replace) => {
    const currentUser = store.getState().currentUser;
    if (currentUser) {
      replace('/');
    }
  };

  return (
    <Provider store={ store }>
      <Router history={ hashHistory }>
        <Route path="/" component={ App }>
          <IndexRedirect to="/home" />
          <Route path="/home" component={ HomeContainer } />
          <Route path="recipes/:recipeId" component={ RecipeDetailContainer }/>
        </Route>
      </Router>
    </Provider>
  );
};

export default Root;
