import React from 'react';
import { Link } from 'react-router';

class SessionForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = { username: "", password: "" };
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleSubmit(e) {
    e.preventDefault();
    const user = Object.assign({}, this.state);
    this.props.processForm(user);
    this.setState({ username: "", password: "" });
  }

  linkText() {
    if (this.props.formType === 'login') {
      return <Link to='/'>{"Don't have an account? Sign Up!"}</Link>;
    } else {
      return <Link to='/'>{"Already have an account Log In!"}</Link>;
    }
  }

  errorText() {
    if (this.props.errors) {
      return (
        <ul>
          {this.props.errors.map((err, idx) => (
            <li key={idx + err}>{err}</li>
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
    console.log(this.props);
    const { loggedIn, errors, formType } = this.props;
    const text = formType === 'login' ? 'Log In' : 'Sign Up';
    return (
      <div>
        <form onSubmit={this.handleSubmit}>
          <h2>{text}</h2>
          {this.errorText()}
          <br/>
          <label>Username:
            <input type="text"
                   value={this.state.username}
                   onChange={this.update('username')}/>
          </label>
          <br />
          <label>Password:
            <input type="password"
                   value={this.state.password}
                   onChange={this.update('password')}/>
          </label>
          <input type="submit" value="Submit"></input>
          <br/>
          {this.linkText()}
        </form>
      </div>
    );
  }
}

export default SessionForm;
