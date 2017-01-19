import React from 'react';
import { Link, hashHistory } from 'react-router';

class FavoriteRecipesIndexItem extends React.Component {
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
    const authorImage = recipe.user ? recipe.user.profile_url: "";
    return (
      <button className="recipe-index-item"
              onClick={this.showRecipe}>
        <img src={recipe.image_url}
             className="recipe-index-item-image"></img>
           <h2 className="recipe-index-item-title">
          {recipe.title}
        </h2>
        <p className="recipe-index-item-description">
          {recipe.description}
        </p>
        <h2 className="recipe-index-item-author">
          <img src={authorImage}
              className="recipe-index-item-author-image"/>
          <div className="recipe-index-item-author-username">
            Recipe by { author }
          </div>
        </h2>
      </button>
    );
  }
}

export default FavoriteRecipesIndexItem;
