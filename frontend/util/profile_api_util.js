export const fetchProfile = (username) => (
  $.ajax({
    method: "GET",
    url: `api/profile/${username}`
  })
);

export const updateProfile = ( user ) => {
  console.log(user);
  console.log(user['id']);
  return $.ajax({
    method: "PATCH",
    url: `api/users/${user.id}`,
    data: user
  });
};
