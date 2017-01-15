import React from 'react';
import { Provider } from 'react-redux';
import {
  applyRouterMiddleware,
  Router,
  Route,
  IndexRoute,
  IndexRedirect,
  hashHistory
} from 'react-router';
import App from './app';
import RecipeIndexContainer from './recipe/recipe_index_container';
import RecipeDetailContainer from './recipe/recipe_detail_container';
import HomeContainer from './home/home_container.js';
import ProfileContainer from './profile/profile_container.js';
import { useScroll } from 'react-router-scroll';

const Root = ({ store }) => {
  const _redirectIfLoggedIn = (nextState, replace) => {
    const currentUser = store.getState().currentUser;
    if (currentUser) {
      replace('/');
    }
  };

  return (
    <Provider store={ store }>
      <Router history={ hashHistory }
              render={ applyRouterMiddleware(useScroll()) }>
        <Route path="/" component={ App }>
          <IndexRedirect to="/home" />
          <Route path="/home" component={ HomeContainer } />
          <Route path="recipes/:recipeId" component={ RecipeDetailContainer }/>
          <Route path="profile" component={ ProfileContainer }>
            <Route path=":username" component={ ProfileContainer }>
              <Route path="my-recipes" component={ ProfileContainer }/>
              <Route path="favorites" component={ ProfileContainer }/>
              <Route path="new-recipe" component={ ProfileContainer }/>
              <Route path="edit-recipe/:id" component={ ProfileContainer }/>
            </Route>
          </Route>
        </Route>
      </Router>
    </Provider>
  );
};

export default Root;

// /profile/:username	"ProfileContainer"
// /profile/:username/my-recipes	"ProfileContainer"
// /profile/:username/favorites	"ProfileContainer"
// /profile/:username/new-recipe	"ProfileContainer"
// /profile/:username/edit-recipe/:id	"ProfileContainer"
