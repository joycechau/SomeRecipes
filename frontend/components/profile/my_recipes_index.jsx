import React from 'react';
import MyRecipesIndexItem from './my_recipes_index_item';
import Masonry from 'react-masonry-component';

class MyRecipesIndex extends React.Component {
  constructor(props) {
    super(props);
  }

  componentWillMount() {
    this.props.fetchProfile(this.props.params.username);
    this.props.fetchOwnRecipes();
  }

  render() {
    return (
      <div>
        <h1 className="profile-page-my-recipes-title">My Recipes</h1>
        <Masonry
          className="profile-page-recipe-index-masonry-container"
        >
          {this.props.recipes.map(recipe => (
            <MyRecipesIndexItem
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

export default MyRecipesIndex;
