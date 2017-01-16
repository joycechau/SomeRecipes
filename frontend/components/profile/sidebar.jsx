import React from 'react';
import { hashHistory } from 'react-router';

class SideBar extends React.Component {
  constructor(props) {
    super(props);
    this.handleAboutMeClick = this.handleAboutMeClick.bind(this);
    this.handleMyRecipesClick = this.handleMyRecipesClick.bind(this);
    this.handleFavoriteRecipesClick = this.handleFavoriteRecipesClick.bind(this);
    this.handleAddRecipeClick = this.handleAddRecipeClick.bind(this);
  }

  handleAboutMeClick(e) {
    e.preventDefault();
    hashHistory.push(`profile/${this.props.currentUser.username}`);
  }

  handleMyRecipesClick(e) {
    e.preventDefault();
    hashHistory.push(`profile/${this.props.currentUser.username}/my-recipes`);
  }

  handleFavoriteRecipesClick(e) {
    e.preventDefault();
    hashHistory.push(`profile/${this.props.currentUser.username}/favorites`);
  }

  handleAddRecipeClick(e) {
    e.preventDefault();
    hashHistory.push(`profile/${this.props.currentUser.username}/new-recipe`);
  }

  render() {
    return (
      <div className="profile-sidebar">
        <button onClick={this.handleAboutMeClick}
                className="profile-sidebar-button">
          <h2 className="profile-sidebar-button-text">
            About Me
          </h2>
        </button>
        <br />
        <button onClick={this.handleMyRecipesClick}
                className="profile-sidebar-button">
          <h2 className="profile-sidebar-button-text">
            My Recipes
          </h2>
        </button>
        <br />
        <button onClick={this.handleFavoriteRecipesClick}
                className="profile-sidebar-button">
          <h2 className="profile-sidebar-button-text">
            Favorite Recipes
          </h2>
        </button>
        <br />
        <button onClick={this.handleAddRecipeClick}
                className="profile-sidebar-button">
          <h2 className="profile-sidebar-button-text">
            Add Recipe
          </h2>
        </button>
      </div>
    );
  }
}

export default SideBar;
