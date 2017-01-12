import React from 'react';
import Modal from 'react-modal';
import { Link, hashHistory } from 'react-router';

class Header extends React.Component {
  constructor(props) {
    super(props);
    this.handleDemoButtonClick = this.handleDemoButtonClick.bind(this);
    this.state = { modalOpen: false };
  }

  handleDemoButtonClick(e) {
    e.preventDefault();
    this.props.login({username: "Joyce", password: "password"});
    hashHistory.push('/');
  }

  handleHeaderLogoClick(e) {
    e.preventDefault();
    hashHistory.push('/');
  }

  headerLogo() {
    return (
      <div>
        <button className="header-logo"
                onClick={this.handleHeaderLogoClick}>
          <h3 className="header-logo-text">SomeRecipes</h3>
          <img className="header-logo-picture"
            src="http://www.clker.com/cliparts/X/O/3/w/l/F/coral-cutlery-hi.png"></img>
        </button>
      </div>
    );
  }

  currentUser() {
    return (
      <div className="header">
        {this.headerLogo()}
        <button onClick={this.props.logout}
                className="header-logout-button">
                Log Out</button>
      </div>
    );
  }

  noCurrentUser() {
    return (
      <div className="header">
        {this.headerLogo()}
        <div>
          <Link to="/signup"
            className="header-signup-link" >
            Sign Up</Link>
          <Link to="/login"
            className="header-login-link"
            >Log In</Link>
          <Link to="/"
            onClick={this.handleDemoButtonClick}
            className="header-demo-link"
            >Demo</Link>
          <Model
            isOpen={this.state.modalOpen}>
          </Model>
        </div>
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
