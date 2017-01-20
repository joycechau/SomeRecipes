import React from 'react';
import { Link, hashHistory } from 'react-router';
import StarRatingComponent from 'react-star-rating-component';

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
      <button className="recipe-index-item"
              onClick={this.showRecipe}>
        <img src={recipe.image_url}
             className="recipe-index-item-image"></img>
        <h2 className="recipe-index-item-title">
          {recipe.title}
        </h2>
        <div className="star-rating">
          <StarRatingComponent
            name="user-rating"
            value={recipe.average_rating}
            emptyStarColor="#E0E0E0"
            starColor="#E5572B"
            editing={false}
            />
        </div>
        <p className="recipe-index-item-description">
          {recipe.description}
        </p>
        <h2 className="recipe-index-item-author">
          <img src={this.props.authorImage}
              className="recipe-index-item-author-image"/>
          <div className="recipe-index-item-author-username">
            Recipe by { author }
          </div>
        </h2>
      </button>
    );
  }
}

export default OtherRecipesIndexItem;
