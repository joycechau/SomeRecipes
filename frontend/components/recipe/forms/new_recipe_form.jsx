import React from 'react';
import { Link, hashHistory } from 'react-router';

class NewRecipeForm extends React.Component {
  constructor(props) {
    super(props);
    this.handleSubmit = this.handleSubmit.bind(this);
    this.state = {
      title: "",
      category: "",
      description: "",
      ingredients: "",
      directions: "",
      image_url: "",
      errors: props.errors
    };
  }

  handleSubmit(e) {
    e.preventDefault();
    console.log(this.state);
    const recipe = Object.assign({}, this.state);
    this.props.createRecipe(recipe);
    this.props.clearErrors();
  }

  update(field) {
    return (e) => this.setState({
      [field]: e.target.value
    });
  }

  errorText() {
    if (this.props.errors) {
      return (
        <ul>
          {this.props.errors.map((err, idx) => (
            <li className="error-message"
                key={idx + err}>
                {err}</li>
          ))}
        </ul>
      );
    }
  }

  render() {
    return (
      <div className="recipe-form-container">
        <h2 className="recipe-form-header">
          Add Recipe
        </h2>
        <form onSubmit={this.handleSubmit}
              className="recipe-form">
          <label className="recipe-form-label">
            <h2 className="recipe-form-label-description">
              Title
            </h2>
            <input type="text"
              value={this.state.title}
              onChange={this.update('title')}
              className="recipe-form-input-title"/>
          </label>
          <label className="recipe-form-label-category">
            <h2 className="recipe-form-label-description">
              Category
            </h2>
            <select onChange={this.update('category')}
                    className="recipe-form-select">
              <option value="--Select Category--"
                      disabled="true"
                      selected="true"
                      className="recipe-form-disabed-option">
                      --Select Category --
              </option>
              <option value="Appetizers" className="recipe-form-option">Appetizers</option>
              <option value="Main Dishes" className="recipe-form-option">Main Dishes</option>
              <option value="Desserts" className="recipe-form-option">Desserts</option>
              <option value="Breakfast" className="recipe-form-option">Breakfast</option>
              <option value="Sides" className="recipe-form-option">Sides</option>
              <option value="Other" className="recipe-form-option">Other
              </option>
            </select>
          </label>
          <label className="recipe-form-label">
            <h2 className="recipe-form-label-description">
              Description
            </h2>
            <textarea
                   value={this.state.description}
                   onChange={this.update('description')}
                   className="recipe-form-input-description">
            </textarea>
          </label>
          <label className="recipe-form-label">
            <h2 className="recipe-form-label-description">
              Ingredients
            </h2>
            <textarea
                   value={this.state.ingredients}
                   onChange={this.update('ingredients')}
                   placeholder="Put each ingredient on its own line."
                   className="recipe-form-input-ingredients">
            </textarea>
          </label>
          <label className="recipe-form-label">
            <h2 className="recipe-form-label-description">
              Directions
            </h2>
            <textarea
                   value={this.state.directions}
                   onChange={this.update('directions')}
                   className="recipe-form-input-directions"
                   placeholder="Put each step on its own line.">
            </textarea>
          </label>
          <label className="recipe-form-label">
            <h2 className="recipe-form-label-description">
              Image URL
            </h2>
            <input type="text"
              value={this.state.image_url}
              onChange={this.update('image_url')}
              className="recipe-form-input-image_url"/>
          </label>
          <label className="recipe-form-label">
            <input type="submit"
              value="Submit"
              className="recipe-form-submit-button"/>
          </label>
          <h2>{this.errorText()}</h2>
        </form>
      </div>
    );
  }
}

export default NewRecipeForm;
