import React from 'react';
import RecipeIndexItem from './recipe_index_item';
import Masonry from 'react-masonry-component';

class RecipeIndex extends React.Component {
  componentDidMount() {
    this.props.fetchAllRecipes();
  }

  render() {
    return (
      <section>
        <h1 className="home-page-recipe-index-container-title">
          Welcome! Browse our recipes.
        </h1>
        <Masonry
          className="recipe-index-masonry-container"
        >
          {this.props.recipes.map(recipe => (
            <RecipeIndexItem
              key={recipe.id + recipe}
              recipe={recipe}
              currentUser={this.props.currentUser}
              />
            ))
          }
        </Masonry>

        { this.props.children }
      </section>
    );
  }
}

export default RecipeIndex;
