import React from 'react';
import { Link, hashHistory } from 'react-router';

class RecipeDetail extends React.Component {
  constructor(props) {
    super(props);
  }

  componentWillMount() {
    this.props.fetchRecipe(this.props.params.recipeId);
  }

  componentWillReceiveProps(nextProps) {
    if (this.props.params.recipeId !== nextProps.params.recipeId) {
      this.props.fetchRecipe(nextProps.params.recipeId);
    }
  }

  render() {
    const { recipe, router } = this.props;
    const author = recipe.user ? recipe.user.username: "";
    return (
      <section className="recipe-detail-container">
        <section className="recipe-detail-break-section">

        </section>
        <section className="recipe-detail-section">
          <div className="recipe-detail-summary-and-image"
               className="clearfix">
            <img src={recipe.image_url}
              alt={recipe.title}
              className="recipe-detail-img"
              />
            <div className="recipe-detail-summary">
              <h2 className="recipe-detail-title">
                {recipe.title}
              </h2>
              <p className="recipe-detail-description">
                {recipe.description}
              </p>
              <h2 className="recipe-detail-author">Recipe by { author }</h2>
            </div>
          </div>
          <div className="recipe-detail-ingredients-section">
            <h2 className="recipe-detail-ingredients-title">
              Ingredients
            </h2>
            <hr className="recipe-detail-hr"/>
            <ul className="recipe-detail-ingredients">
              {
                recipe.ingredients.map((ingredient, idx) => (
                  <li key={idx + ingredient}
                    className="recipe-detail-ingredient-line">
                    {ingredient}
                  </li>
                ))
              }
            </ul>
          </div>
          <div className="recipe-detail-directions-section">
            <h2 className="recipe-detail-directions-title">
              Directions
            </h2>
            <hr className="recipe-detail-hr"/>
            <ul className="recipe-detail-directions">
              {
                recipe.directions.map((direction,idx) => (
                  <li key={idx + direction}
                    className="recipe-detail-direction-line">
                    {direction}
                  </li>
                ))
              }
            </ul>
          </div>
        </section>
      </section>
    );
  }
}

export default RecipeDetail;
