import React from 'react';
import FavoriteRecipesIndexItem from './favorite_recipes_index_item';
import Masonry from 'react-masonry-component';

class FavoriteRecipesIndex extends React.Component {
  constructor(props) {
    super(props);
  }

  componentWillMount() {
    this.props.fetchFavoriteRecipes();
  }

  render() {

    return (
      <div>
        <h1 className="profile-page-my-recipes-title">Favorite Recipes</h1>
        <Masonry
          className="profile-page-recipe-index-masonry-container"
          >
          {this.props.recipes.map(recipe => (
            <FavoriteRecipesIndexItem
              key={recipe.id + recipe}
              recipe={recipe}
              currentUser={this.props.currentUser}
              profile={this.props.profile}
              />
            ))
          }
        </Masonry>
      </div>
    );
  }
}

export default FavoriteRecipesIndex;
