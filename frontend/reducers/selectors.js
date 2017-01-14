export const recipesAsArray = ({ recipes }) => {
  return Object.keys(recipes).map(key => recipes[key]);
};
