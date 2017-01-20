import React from 'react';
import { hashHistory } from 'react-router';
import StarRatingComponent from 'react-star-rating-component';


class ReviewIndexItem extends React.Component {
  constructor(props) {
    super(props);
    this.handleProfileClick = this.handleProfileClick.bind(this);
  }

  handleProfileClick(e) {
    e.preventDefault();
    const { review } = this.props;
    const author = review.user ? review.user.username: "";
    hashHistory.push(`/profile/${author}`);
  }

  render() {
    const { review, currentUser, fetchReview, updateReview, deleteReview } = this.props;
    const author = review.user ? review.user.username: "";
    const author_picture = review.user ? review.user.profile_url: "";
    return (
      <div className="review">
        <button className="review-author-button"
               onClick={this.handleProfileClick}>
          <img src={author_picture}
            className="review-author-button-image"/>
          Reviewed by { author }
        </button>
        <div className="review-star-rating">
          <StarRatingComponent
            name="user-rating"
            value={review.rating}
            emptyStarColor="#E0E0E0"
            starColor="#E5572B"
            editing={false}
            />
        </div>
        <div className="review-body">
          {review.body}
        </div>
      </div>
    );
  }
}


export default ReviewIndexItem;
