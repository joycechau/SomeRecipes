import React from 'react';
import { Link, hashHistory } from 'react-router';

class OtherRecipesIndexItem extends React.Component {
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
    const { recipe, router, currentUser, author } = this.props;
    return (
      <button className="profile-page-recipe-index-item"
              onClick={this.showRecipe}>
        <img src={recipe.image_url}
             className="profile-page-recipe-index-image"></img>
           <h2 className="profile-page-recipe-index-item-title">
          {recipe.title}
        </h2>
        <p className="profile-page-recipe-item-description">
          {recipe.description}
        </p>
        <h2 className="profile-page-recipe-item-author">
          Recipe by { author }
        </h2>
      </button>
    );
  }
}

export default OtherRecipesIndexItem;
