export const RECEIVE_ERRORS_SESSION = 'RECEIVE_ERRORS_SESSION';
export const RECEIVE_ERRORS_RECIPE = 'RECEIVE_ERRORS_RECIPE';
export const CLEAR_ERRORS = 'CLEAR_ERRORS';

export const receiveErrorsSession = (errors) => ({
  type: RECEIVE_ERRORS_SESSION,
  errors
});

export const receiveErrorsRecipe = (errors) => ({
  type: RECEIVE_ERRORS_RECIPE,
  errors
});

export const clearErrors = () => ({
  type: CLEAR_ERRORS
});
