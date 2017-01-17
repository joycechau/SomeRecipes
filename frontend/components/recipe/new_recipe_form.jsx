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
      <div className="recipe-form">
        <h2 className="recipe-form-header">
          Add Recipe
        </h2>
        <form onSubmit={this.handleSubmit}>
          <label className="recipe-form-label">Title
            <input type="text"
              value={this.state.title}
              onChange={this.update('title')}
              className="recipe-form-input-title"/>
          </label>
          <br />
          <label className="recipe-form-label">Category
            <select onChange={this.update('category')}>
              <option value="--Select Category--"
                      disabled="true"
                      selected="true">
                      --Select Category --
              </option>
              <option value="Appetizers">Appetizers</option>
              <option value="Main Dishes">Main Dishes</option>
              <option value="Desserts">Desserts</option>
              <option value="Breakfast">Breakfast</option>
              <option value="Sides">Sides</option>
              <option value="Other">Other
              </option>
            </select>
          </label>
          <br/>
          <label className="recipe-form-label"> Description
            <textarea
                   value={this.state.description}
                   onChange={this.update('description')}
                   className="recipe-form-input-description">
            </textarea>
          </label>
          <br/>
          <label className="recipe-form-label"> Ingredients
            <textarea
                   value={this.state.ingredients}
                   onChange={this.update('ingredients')}
                   className="recipe-form-input-ingredients">
            </textarea>
          </label>
          <br/>
          <label className="recipe-form-label"> Directions
            <textarea
                   value={this.state.directions}
                   onChange={this.update('directions')}
                   className="recipe-form-input-directions">
            </textarea>
          </label>
          <br/>
          <input type="submit"
            value="Submit"
            className="recipe-form-submit-button"/>
          <h2>{this.errorText()}</h2>
        </form>
      </div>
    );
  }
}

export default NewRecipeForm;
