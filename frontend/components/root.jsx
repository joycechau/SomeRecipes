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
import NewRecipeFormContainer from './recipe/new_recipe_form_container.js';
import EditRecipeFormContainer from './recipe/edit_recipe_form_container.js';
import { useScroll } from 'react-router-scroll';
import { fetchOwnRecipes } from '../actions/recipes_actions.js';

const Root = ({ store }) => {
  const _redirectIfLoggedIn = (nextState, replace) => {
    const currentUser = store.getState().currentUser;
    if (currentUser) {
      replace('/');
    }
  };

  const _redirectIfNotLoggedIn = (nextState, replace) => {
    const currentUser = store.getState().currentUser;
    if (!currentUser) {
      replace('/');
    }
  };

  const populateMyRecipes = () => {
    fetchOwnRecipes();
  };

  return (
    <Provider store={ store }>
      <Router history={ hashHistory }
              render={ applyRouterMiddleware(useScroll()) } >
        <Route path="/" component={ App } >
          <IndexRoute component={ HomeContainer } />
          <Route path="recipes/:recipeId" component={ RecipeDetailContainer } />
          <Route path="profile" component={ ProfileContainer } >
            <Route path=":username"
                   component={ AboutMeContainer }
                   onEnter={ _redirectIfNotLoggedIn}/>
            <Route path=":username/my-recipes"
                   component={ MyRecipesContainer }
                   onEnter={ populateMyRecipes }
                   />
            <Route path=":username/favorites" component={ FavoriteRecipesContainer } />
            <Route path=":username/new-recipe" component={ NewRecipeFormContainer } />
            <Route path=":username/edit-recipe/:id" component={ EditRecipeFormContainer } />
          </Route>
        </Route>
      </Router>
    </Provider>
  );
};

export default Root;
