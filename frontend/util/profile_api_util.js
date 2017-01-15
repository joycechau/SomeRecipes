export const fetchProfile = (username) => (
  $.ajax({
    method: "GET",
    url: `api/profile/${username}`
  })
);
