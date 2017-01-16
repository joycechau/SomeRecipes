import React from 'react';
import { Provider } from 'react-redux';
import {
  applyRouterMiddleware,
  Router,
  Route,
  IndexRoute,
  hashHistory
} from 'react-router';
import App from './app';
import RecipeIndexContainer from './recipe/recipe_index_container';
import RecipeDetailContainer from './recipe/recipe_detail_container';
import HomeContainer from './home/home_container.js';
import ProfileContainer from './profile/profile_container.js';
import AboutMeContainer from './profile/about_me_container.js';
import MyRecipesContainer from './profile/my_recipes_index_container.js';
import FavoriteRecipesContainer from './profile/favorite_recipes_container.js';
import RecipeFormContainer from './recipe/recipe_form_container.js';
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
              render={ applyRouterMiddleware(useScroll()) } >
        <Route path="/" component={ App } >
          <IndexRoute component={ HomeContainer } />
          <Route path="recipes/:recipeId" component={ RecipeDetailContainer } />
          <Route path="profile" component={ ProfileContainer } >
            <Route path=":username" component={ AboutMeContainer } />
            <Route path=":username/my-recipes"
                   component={ MyRecipesContainer }
                   />
            <Route path=":username/favorites" component={ FavoriteRecipesContainer } />
            <Route path=":username/new-recipe" component={ RecipeFormContainer } />
            <Route path=":username/edit-recipe/:id" component={ RecipeFormContainer } />
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
