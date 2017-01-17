import React from 'react';
import { Link, hashHistory } from 'react-router';

class EditRecipeForm extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    return (
      <div>
        <h1>Edit Recipe Form</h1>
        {this.props.params.id}
      </div>
    );
  }
}

export default EditRecipeForm;
