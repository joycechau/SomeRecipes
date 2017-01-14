import React from 'react';
import { Link, hashHistory } from 'react-router';

class RecipeDetail extends React.Component {
  constructor(props) {
    super(props);
  }

  componentWillMount() {
    this.props.fetchRecipe(this.props.params.recipeId);
  }

  render() {
    const { recipe, router } = this.props;
    const author = recipe.user ? recipe.user.username: "";
    return (
      <section className="recipe-detail-container">
        <section className="recipe-detail-break-section">

        </section>
        <section className="recipe-detail-section">
          <figure className="recipe-detail-figure">
            <img src={recipe.image_url}
              alt={recipe.title}
              className="recipe-detail-img"></img>
          </figure>
          <div className="recipe-detail-summary">
            <h2 className="recipe-detail-title">
              {recipe.title}
            </h2>
            <p className="recipe-detail-description">
              {recipe.description}
            </p>
            <h2 className="recipe-detail-author">Recipe by { author }</h2>
          </div>
          <ul className="recipe-detail-ingredients">
            <h2 className="recipe-detail-ingredients-title">
              Ingredients
            </h2>
            {
              recipe.ingredients.map(ingredient => (
                <li>{ingredient}</li>
              ))
            }
          </ul>
          <ul className="recipe-detail-directions">
            <h2 className="recipe-detail-directions-title">
              Directions
            </h2>
            {
              recipe.directions.map(direction => (
                <li>{direction}</li>
              ))
            }
          </ul>
        </section>
      </section>
    );
  }
}

export default RecipeDetail;
