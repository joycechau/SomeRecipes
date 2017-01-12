import React from 'react';
import { Link } from 'react-router';

class SessionForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = { username: "",
                   password: "",
                   formType: props.formType,
                   errors: props.errors
                 };
    this.handleSubmit = this.handleSubmit.bind(this);
    this.toggleFormType = this.toggleFormType.bind(this);
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
    this.props.processForm(user);
    this.setState({ username: "", password: "" });
    this.props.clearErrors();
  }

  toggleFormType(e) {
    e.preventDefault();
    this.props.clearErrors();
    if (this.state.formType === 'login') {
      this.setState({ username: "", password: "", formType: "signup" });
    } else {
      this.setState({ username: "", password: "", formType: "login" });
    }
  }

  linkText() {
    if (this.state.formType === 'login') {
      return (
        <div>
          <h2 className="session-form-redirect-text">
            {"Don't have an account?"}
          </h2>
          <button onClick={this.toggleFormType}
                  className="session-form-redirect-button"
                  >Sign Up</button>
        </div>
      );
    } else {
      return (
        <div>
          <h2 className="session-form-redirect-text">
            {"Already have an account?"}
          </h2>
          <button onClick={this.toggleFormType}
                  className="session-form-redirect-button"
                  >Log In</button>
        </div>
      );
    }
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

  update(field) {
    return (e) => this.setState({
      [field]: e.target.value
    });
  }

  render() {
    const text = this.state.formType === 'login' ? 'Log In' : 'Sign Up';
    return (
      <div>
        <form onSubmit={this.handleSubmit}
              className="session-form">
          <h2 className="session-form-title">{text}</h2>
          <label className="session-form-label">Username:
            <input type="text"
                   value={this.state.username}
                   onChange={this.update('username')}
                   className="session-form-input"/>
          </label>
          <label className="session-form-label">Password:
            <input type="password"
                   value={this.state.password}
                   onChange={this.update('password')}
                   className="session-form-input"/>
          </label>
          <br/>
          <input type="submit"
                 value="Submit"
                 className="session-form-submit-button"/>
          <h2>{this.errorText()}</h2>
          <h2>{this.linkText()}</h2>
        </form>
      </div>
    );
  }
}

export default SessionForm;
