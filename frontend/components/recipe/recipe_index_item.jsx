import React from 'react';
import { Link, hashHistory } from 'react-router';

class RecipeIndexItem extends React.Component {
  constructor(props) {
    super(props);
    this.showRecipe = this.showRecipe.bind(this);
  }

  showRecipe(e) {
    e.preventDefault();
    const url = `/recipes/${this.props.recipe.id}`;
    hashHistory.push(url);
  }

  render() {
    const { recipe, router, currentUser } = this.props;
    const author = recipe.user ? recipe.user.username: "";
    return (
      <button className="home-page-recipe-index-item"
              onClick={this.showRecipe}>
        <img src={recipe.image_url}></img>
        <h2 className="home-page-recipe-index-item-title">
          {recipe.title}
        </h2>
        <h2 className="home-page-recipe-index-item-description">
          {recipe.description}
        </h2>
        <h2>
          Recipe by { author }
        </h2>
      </button>
    );
  }
}

export default RecipeIndexItem;
