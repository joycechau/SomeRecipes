import React from 'react';
import { Link, hashHistory } from 'react-router';

class RecipeDetail extends React.Component {
  constructor(props) {
    super(props);
    this.handleProfileClick = this.handleProfileClick.bind(this);
    this.handleEditClick = this.handleEditClick.bind(this);
    this.handleDeleteClick = this.handleDeleteClick.bind(this);
    this.handleFavoriteClick = this.handleFavoriteClick.bind(this);
  }

  componentWillMount() {
    this.props.fetchRecipe(this.props.params.recipeId);
  }

  componentWillUnmount() {
    this.props.clearAllRecipes();
  }

  componentWillReceiveProps(nextProps) {
    if (this.props.params.recipeId !== nextProps.params.recipeId) {
      this.props.fetchRecipe(nextProps.params.recipeId);
    }
  }

  handleProfileClick(e) {
    e.preventDefault;
    hashHistory.push(`/profile/${this.props.recipe.user.username}`);
  }

  handleEditClick(e) {
    e.preventDefault();
    const username = this.props.currentUser.username;
    const recipeId = this.props.params.recipeId;
    hashHistory.push(`/profile/${username}/edit-recipe/${recipeId}`);
  }

  handleDeleteClick(e) {
    e.preventDefault();
    const username = this.props.currentUser.username;
    this.props.deleteRecipe(this.props.params.recipeId);
    hashHistory.push(`/profile/${username}/my-recipes`);
  }

  handleFavoriteClick(e) {
    e.preventDefault();
    if (this.props.recipe.favorited) {
      this.props.deleteFavorite({
        recipe_id: this.props.recipe.id,
        user_id: this.props.currentUser.id
      });
    } else {
      this.props.createFavorite({
        recipe_id: this.props.recipe.id,
        user_id: this.props.currentUser.id
      });
    }
  }

  editAndDeleteButtons() {
    const { currentUser, recipe } = this.props;
    const currentUserUsername = currentUser ? currentUser.username: "";
    const recipeUserUsername = recipe.user ? recipe.user.username: "";
    if (currentUserUsername === recipeUserUsername ) {
      return (
        <div className="edit-and-delete-buttons-div">
          <button onClick={this.handleEditClick}
            className="edit-recipe-button">
            Update Recipe
          </button>
          <button onClick={this.handleDeleteClick}
            className="delete-recipe-button">
            Delete Recipe
          </button>
        </div>
      );
    }
  }

  favoriteButton() {
    const { currentUser, recipe } = this.props;
    const currentUserUsername = currentUser ? currentUser.username: "";
    const recipeUserUsername = recipe.user ? recipe.user.username: "";
    const text = recipe.favorited ? "Remove Favorite" : "Add Favorite";
    if ( currentUser === null ) {
      return;
    }
    if (currentUserUsername !== recipeUserUsername ) {
      return (
        <div className="favorite-recipe-button-div">
          <button onClick={this.handleFavoriteClick}
                  className="favorite-recipe-button">
                  {text}
          </button>
        </div>
      );
    }
  }

  render() {
    const { recipe, router } = this.props;
    const author = recipe.user ? recipe.user.username: "";
    const author_picture = recipe.user ? recipe.user.profile_url: "";
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
              <button className="recipe-detail-author-button"
                      onClick={this.handleProfileClick}>
                <img src={author_picture}
                     className="recipe-detail-author-button-image"/>
                Recipe by { author }
              </button>
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
          <br />
          <div className="recipe-detail-buttons">
            {this.editAndDeleteButtons()}
            {this.favoriteButton()}
          </div>
        </section>
      </section>
    );
  }
}

export default RecipeDetail;
