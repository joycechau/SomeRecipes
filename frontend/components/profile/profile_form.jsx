import React from 'react';
import { Link } from 'react-router';

class ProfileForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = { username: "",
                   password: "",
                 };
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleSubmit(e) {
    e.preventDefault();
    const user = Object.assign({}, this.state);
    if (this.state.formType === 'signup') {
      this.props.signup({
        username: this.state.username,
        password: this.state.password
      });
    } else {
      this.props.login({
        username: this.state.username,
        password: this.state.password
      });
    }
    this.setState({ username: "", password: "" });
    this.props.clearErrors();
  }

  update(field) {
    return (e) => this.setState({
      [field]: e.target.value
    });
  }

  render() {
    const text = this.state.formType === 'login' ? 'Log In' : 'Sign Up';
    return (
      <div>
        <form onSubmit={this.handleProfileFormClick}>
          <label> First Name
            <input value={this.props.profile.fname}></input>
          </label>
          <label> Last Name
            <input value={this.props.profile.lname}></input>
          </label>
          <label> Interests
            <input value={this.props.profile.interests}></input>
          </label>
        </form>
      </div>
    );
  }
}

export default ProfileForm;
