import React from 'react';
import RecipeIndexItem from './recipe_index_item';

class RecipeIndex extends React.Component {
  componentDidMount() {
    this.props.fetchAllRecipes();
  }

  render() {
    return (
      <div className="home-page-recipe-index-container">
        <ul>
          {
            this.props.recipes.map(recipe => (
              <RecipeIndexItem key={recipe.id}
                               recipe={recipe}
                               currentUser={this.props.currentUser}/>
            ))
          }
        </ul>
        { this.props.children }
      </div>
    );
  }
}

export default RecipeIndex;
