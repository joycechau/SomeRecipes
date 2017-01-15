import React from 'react';

class AboutMe extends React.Component {
  constructor(props) {
    super(props);
    this.state = {

    };
  }

  componentWillMount() {
    this.props.fetchProfile(this.props.params.username);
  }

  render() {
    console.log(this.props.params);
    console.log(this.props.profile);
    return (
      <div>
        <div className="about-me-image-and-username">
          <img className="about-me-image"
            src={this.props.profile_url}>
          </img>
          <h1 className="about-me-username">
            {this.props.profile.username}
          </h1>
        </div>
        <h1 className="about-me-fname">
          First Name: {this.props.profile.fname}
        </h1>
        <h1 className="about-me-lname">
          Last Name: {this.props.profile.lname}
        </h1>
        <h1 className="about-me-interests">
          Interests: {this.props.profile.interests}
        </h1>
      </div>
    );
  }
}

export default AboutMe;
