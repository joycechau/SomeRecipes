import React from 'react';
import StarRatingComponent from 'react-star-rating-component';


class NewReviewForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      rating: 0,
      body: "",
      recipe_id: props.recipe.id,
      user_id: props.currentUser.id
    };
    this.handleSubmit = this.handleSubmit.bind(this);
    this.onStarClick = this.onStarClick.bind(this);
  }

  componentWillReceiveProps(newProps) {
    const oldReviews = Object.values(this.props.recipe.reviews).length;
    const newReviews = Object.values(newProps.recipe.reviews).length;
    if (oldReviews !== newReviews ) {
      this.props.closeModal();
    }
  }

  handleSubmit(e) {
    e.preventDefault();
    const review = Object.assign({}, this.state);
    this.props.createReview(review);
  }

  onStarClick(nextValue, prevValue, name) {
    this.setState({ rating: nextValue });
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
      <div className="review-form-container">
        <h2 className="review-form-header">
          Rate and Review
        </h2>
        <form onSubmit={this.handleSubmit}
              className="review-form">
          <label className="review-form-star-rating-label">
            Your Rating
            <div className="review-form-star-rating-component">
              <StarRatingComponent
                name="user-rating"
                value={this.state.rating}
                onStarClick={this.onStarClick}
                emptyStarColor="#E0E0E0"
                starColor="#E5572B"
              />
            </div>
          </label>
          <label className="review-form-label">
            <div className="review-form-your-review-label">
              Your review (optional)
            </div>
            <textarea
                   value={this.state.body}
                   onChange={this.update('body')}
                   className="review-form-input-body">
            </textarea>
          </label>
          <label className="review-form-label">
            <input type="submit"
              value="Submit"
              className="review-form-submit-button"/>
          </label>
          <h2 className="review-form-errors">{this.errorText()}</h2>
        </form>
      </div>
    );
  }
}

export default NewReviewForm;
