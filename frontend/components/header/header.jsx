import React from 'react';
import { Link, hashHistory } from 'react-router';

class Header extends React.Component {
  constructor(props) {
    super(props);
    this.handleClick = this.handleClick.bind(this);
  }

  handleClick(e) {
    e.preventDefault();
    this.props.login({username: "Joyce", password: "password"});
    hashHistory.push('/');
  }

  currentUser() {
    return (
      <div className="header">
        <h3 clasName="header-logo">
          Welcome, {this.props.currentUser.username}!
        </h3>
        <button onClick={this.props.logout}
                className="header-logout-button">
                Log Out</button>
      </div>
    );
  }

  noCurrentUser() {
    return (
      <div className="header">
        <Link to="/signup"
              className="header-signup-link" >
              Sign Up</Link>
        <Link to="/login"
              className="header-login-link"
              >Log In</Link>
        <Link to="/"
              onClick={this.handleClick}
              className="header-demo-link"
              >Demo</Link>
      </div>
    );
  }

  render() {
    if (this.props.currentUser) {
      return this.currentUser();
    } else {
      return this.noCurrentUser();
    }
  }
}

export default Header;
