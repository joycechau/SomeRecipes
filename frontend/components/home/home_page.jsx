import React from 'react';
import RecipeIndexContainer from '../recipe/recipe_index_container';

class HomePage extends React.Component {
  render() {
    return (
      <div className="home-page-container">
        <section className="home-splash-container">
          <h1 className="home-splash-text">
             “Learn how to cook–try new recipes, learn from your mistakes, be fearless, and above all have fun!” ~ Julia Child
          </h1>
        </section>
        <section className="home-recipe-index-container">
          <RecipeIndexContainer />
        </section>
      </div>
    );
  }
}

export default HomePage;
