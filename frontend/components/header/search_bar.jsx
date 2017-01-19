import React from 'react';
import { hashHistory } from 'react-router';

class SearchBar extends React.Component {
  constructor(props) {
    super(props);
    this.state = { searchParams: "" };
    this.handleSearch = this.handleSearch.bind(this);
  }

  handleSearch(e) {
    e.preventDefault();
    hashHistory.push(`search-results/${this.state.searchParams}`);
  }

  update(field) {
    return (e) => this.setState({
      [field]: e.target.value
    });
  }

  render() {
    return (
      <form className="search-bar-section"
            onSubmit={this.handleSearch}>
        <input className="search-bar-input"
               type="text"
               placeholder="Find recipes"
               onChange={this.update('searchParams')}/>
        <button className="search-bar-button"
                onClick={this.handleSearch}>
          <img className="search-bar-image"
               src="https://res.cloudinary.com/joycechau/image/upload/c_scale,w_40/v1484847983/google-web-search-512_bdwylv.png"/>
        </button>
      </form>
    );
  }
}

export default SearchBar;
