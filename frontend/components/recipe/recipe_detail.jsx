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
    console.log(recipe);
    return (
      <div>
        <h2>Recipe Detail</h2>
        <img src={recipe.image_url}></img>
        <h2>{recipe.title}</h2>
        <h2>{recipe.category}</h2>
        <h2>{recipe.description}</h2>
        <h2>Recipe by { author }</h2>
        <h2>{recipe.ingredients}</h2>
        <h2>{recipe.directions}</h2>
      </div>
    );
  }
}

export default RecipeDetail;
